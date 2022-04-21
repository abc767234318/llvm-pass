#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include <vector>

using namespace llvm;
using std::vector;

llvm::LLVMContext *CONTEXT;
#define INIT_CONTEXT(X) CONTEXT = &X.getContext()
#define TYPE_I64 Type::getInt64Ty(*CONTEXT)
#define TYPE_I32 Type::getInt32Ty(*CONTEXT)
#define TYPE_I8 Type::getInt8Ty(*CONTEXT)
#define GET_TYPE(X) TYPE::getInt(X) Ty(*CONTEXT)
#define CONST_I64(V) ConstantInt::get(TYPE_I64, V, false)
#define CONST_I32(V) ConstantInt::get(TYPE_I32, V, false)
#define CONST_I8(V) ConstantInt::get(TYPE_I8, V, false)
#define CONST(T, V) ConstantInt::get(T, V)

namespace llvm
{
    class BogusControlFlow : public FunctionPass
    {
    public:
        static char ID;
        bool enable;

        BogusControlFlow() : FunctionPass(ID)
        {
        }

        bool runOnFunction(Function &F);

        // 对基本块 BB 进行混淆
        void bogus(BasicBlock *BB);

        // 创建条件恒为真的 ICmpInst*
        // 该比较指令的条件为：y < 10 || x * (x + 1) % 2 == 0
        // 其中 x, y 为恒为0的全局变量
        Value *createBogusCmp(BasicBlock *insertAfter);
    };

}

BasicBlock* createCloneBasicBlock(BasicBlock *BB){
    // 克隆之前先修复所有逃逸变量
    vector<Instruction*> origReg;
    BasicBlock &entryBB = BB->getParent()->getEntryBlock();
    for(Instruction &I : *BB){
        if(!(isa<AllocaInst>(&I) && I.getParent() == &entryBB) 
            && I.isUsedOutsideOfBlock(BB)){
            origReg.push_back(&I);
        }
    }
    for(Instruction *I : origReg){
        DemoteRegToStack(*I, entryBB.getTerminator());
    }
    ValueToValueMapTy VMap;
    BasicBlock *cloneBB = CloneBasicBlock(BB, VMap, "cloneBB", BB->getParent());
    BasicBlock::iterator origI = BB->begin();
    // 对克隆基本块的引用进行修复
    for(Instruction &I : *cloneBB){
        for(int i = 0;i < I.getNumOperands();i ++){
            Value *V = MapValue(I.getOperand(i), VMap);
            if(V){
                I.setOperand(i, V);
            }
        }
        // SmallVector<std::pair<unsigned, MDNode *>, 4> MDs;
        // I.getAllMetadata(MDs);
        // for(std::pair<unsigned, MDNode *> pair : MDs){
        //     MDNode *MD = MapMetadata(pair.second, VMap);
        //     if(MD){
        //         errs() << "DEBUG1: " << *pair.second << "\n";
        //         errs() << "DEBUG2: " << *MD << "\n";
        //         I.setMetadata(pair.first, MD);
        //     }
        // }
        //I.setDebugLoc(origI->getDebugLoc());
        origI++;
    }
    return cloneBB;
}

// 混淆次数，混淆次数越多混淆结果越复杂
// static cl::opt<int> ObfuTimes("bcf-times", cl::init(1), cl::desc("Run BogusControlFlow pass <bcf-times> time(s)"));
int ObfuTimes = 1;

bool containsInlineAsm(BasicBlock & BB)
{
    for (Instruction &I : BB)
    {
        for (int i = 0; i < I.getNumOperands(); i++)
        {
            if (isa<InlineAsm>(I.getOperand(i)))
            {
                return true;
            }
        }
    }
    return false;
}

bool BogusControlFlow::runOnFunction(Function &F)
{
    if (1)
    {
        INIT_CONTEXT(F);
        for (int i = 0; i < ObfuTimes; i++)
        {
            vector<BasicBlock *> origBB;
            for (BasicBlock &BB : F)
            {
                if (!containsInlineAsm(BB))
                {
                    origBB.push_back(&BB);
                }
            }
            for (BasicBlock *BB : origBB)
            {
                bogus(BB);
            }
        }
        return true;
    }
    return false;
}

Value *BogusControlFlow::createBogusCmp(BasicBlock *insertAfter)
{
    // if((y < 10 || x * (x + 1) % 2 == 0))
    // 等价于 if(true)
    Module *M = insertAfter->getModule();
    GlobalVariable *xptr = new GlobalVariable(*M, TYPE_I32, false, GlobalValue::CommonLinkage, CONST_I32(0), "x");
    GlobalVariable *yptr = new GlobalVariable(*M, TYPE_I32, false, GlobalValue::CommonLinkage, CONST_I32(0), "y");
    LoadInst *x = new LoadInst(TYPE_I32, xptr, "", insertAfter);
    LoadInst *y = new LoadInst(TYPE_I32, yptr, "", insertAfter);
    ICmpInst *cond1 = new ICmpInst(*insertAfter, CmpInst::ICMP_SLT, y, CONST_I32(10));
    BinaryOperator *op1 = BinaryOperator::CreateAdd(x, CONST_I32(1), "", insertAfter);
    BinaryOperator *op2 = BinaryOperator::CreateMul(op1, x, "", insertAfter);
    BinaryOperator *op3 = BinaryOperator::CreateURem(op2, CONST_I32(2), "", insertAfter);
    ICmpInst *cond2 = new ICmpInst(*insertAfter, CmpInst::ICMP_EQ, op3, CONST_I32(0));
    return BinaryOperator::CreateOr(cond1, cond2, "", insertAfter);
}

void BogusControlFlow::bogus(BasicBlock *entryBB)
{
    // 第一步，拆分得到 entryBB, bodyBB, endBB
    // 其中所有的 PHI 指令都在 entryBB(如果有的话)
    // endBB 只包含一条终结指令
    BasicBlock *bodyBB = entryBB->splitBasicBlock(entryBB->getFirstNonPHIOrDbgOrLifetime(), "bodyBB");
    BasicBlock *endBB = bodyBB->splitBasicBlock(bodyBB->getTerminator(), "endBB");
    // 第二步，克隆 bodyBB 得到克隆块 cloneBB
    BasicBlock *cloneBB = createCloneBasicBlock(bodyBB);

    // 第三步，构造虚假跳转
    // 1. 将 entryBB, bodyBB, cloneBB 末尾的绝对跳转移除
    entryBB->getTerminator()->eraseFromParent();
    bodyBB->getTerminator()->eraseFromParent();
    cloneBB->getTerminator()->eraseFromParent();
    // 2. 在 entryBB 和 bodyBB 的末尾插入条件恒为真的虚假比较指令
    Value *cond1 = createBogusCmp(entryBB);
    Value *cond2 = createBogusCmp(bodyBB);
    // 3. 将 entryBB 到 bodyBB 的绝对跳转改为条件跳转
    BranchInst::Create(bodyBB, cloneBB, cond1, entryBB);
    // 4. 将 bodyBB 到 endBB的绝对跳转改为条件跳转
    BranchInst::Create(endBB, cloneBB, cond2, bodyBB);
    // 5. 添加 bodyBB.clone 到 bodyBB 的绝对跳转
    BranchInst::Create(bodyBB, cloneBB);
}

char BogusControlFlow::ID = 0;
static RegisterPass<BogusControlFlow> X("bcf", "BogusControlFlow");