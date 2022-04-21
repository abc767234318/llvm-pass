#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/IR/Intrinsics.h"
#include "llvm/IR/IntrinsicsX86.h"
#include "llvm/Transforms/Obfuscation/Utils.h"
#include <vector>
#include <cstdlib>
#include <ctime>
using std::vector;
using namespace llvm;

namespace
{
    class RandomControlFlow : public FunctionPass
    {
    public:
        static char ID;
        bool enable;

        RandomControlFlow() : FunctionPass(ID)
        {
        }

        bool runOnFunction(Function &F);

        // ����һ���Ч�� origVar ��ָ��
        Value *alterVal(Value *origVar, BasicBlock *insertAfter);

        void insertRandomBranch(Value *randVar, BasicBlock *ifTrue, BasicBlock *ifFalse, BasicBlock *insertAfter);

        // �Ի�����Ϊ��λ�����������������
        bool randcf(BasicBlock *BB);
    };
}

// ������������������Խ��������Խ����
//static cl::opt<int> ObfuTimes("rcf-times", cl::init(1), cl::desc("Run RandomControlFlow pass <rcf-times> time(s)"));
int ObfuTimes = 1;

bool RandomControlFlow::runOnFunction(Function &F)
{

    INIT_CONTEXT(F);
    for (int i = 0; i < ObfuTimes; i++)
    {
        vector<BasicBlock *> origBB;
        for (BasicBlock &BB : F)
        {
            origBB.push_back(&BB);
        }
        for (BasicBlock *BB : origBB)
        {
            randcf(BB);
        }
    }
    return true;

}

void RandomControlFlow::insertRandomBranch(Value *randVar, BasicBlock *ifTrue, BasicBlock *ifFalse, BasicBlock *insertAfter)
{
    // ����������еȼ۱任
    Value *alteredRandVar = alterVal(randVar, insertAfter);
    Value *randMod2 = BinaryOperator::Create(Instruction::And, alteredRandVar, CONST_I32(1), "", insertAfter);
    ICmpInst *condition = new ICmpInst(*insertAfter, ICmpInst::ICMP_EQ, randMod2, CONST_I32(1));
    BranchInst::Create(ifTrue, ifFalse, condition, insertAfter);
}

bool RandomControlFlow::randcf(BasicBlock *BB)
{
    // ��ֵõ� entryBB, bodyBB, endBB
    // �������е� PHI ָ��� entryBB(����еĻ�)
    // endBB ֻ����һ���ս�ָ��
    BasicBlock *entryBB = BB;
    BasicBlock *bodyBB = entryBB->splitBasicBlock(BB->getFirstNonPHIOrDbgOrLifetime(), "bodyBB");
    BasicBlock *endBB = bodyBB->splitBasicBlock(bodyBB->getTerminator(), "endBB");
    BasicBlock *cloneBB = createCloneBasicBlock(bodyBB);

    // �� entryBB ����������ת��ʹ���ܹ������ת���� bodyBB �����¡������ cloneBB
    entryBB->getTerminator()->eraseFromParent();
    // �Ϸ�����ͨ��rdrandָ�����������
    // Function *rdrand = Intrinsic::getDeclaration(entryBB->getModule(), Intrinsic::x86_rdrand_32);
    // CallInst *randVarStruct = CallInst::Create(rdrand->getFunctionType(), rdrand, "", entryBB);
    // // ͨ�� rdrand ���ú�����ȡ�����
    // Value *randVar = ExtractValueInst::Create(randVarStruct, 0, "", entryBB);

    // ����һ��ͨ������һ��ջ�ռ�ʵ�������ڻ�ȡ�������Ч��
    AllocaInst *randPtr = new AllocaInst(TYPE_I32, 0, "rand.ptr", entryBB);
    Value *randVar = new LoadInst(TYPE_I32, randPtr, "", entryBB);

    // ������������rand()������ȡ�����
    // Module &M = *BB->getModule();
    // Function *randFunc = cast<Function>(M.getOrInsertFunction("rand", FunctionType::getInt32Ty(*CONTEXT)).getCallee());
    // randFunc->setDSOLocal(true);
    // Value *randVar = CallInst::Create(randFunc->getFunctionType(), randFunc, "", entryBB);

    insertRandomBranch(randVar, bodyBB, cloneBB, entryBB);

    // ��� bodyBB �� bodyBB.clone ����������ת
    bodyBB->getTerminator()->eraseFromParent();
    insertRandomBranch(randVar, endBB, cloneBB, bodyBB);
    // ��� bodyBB.clone �� bodyBB ����������ת
    cloneBB->getTerminator()->eraseFromParent();
    insertRandomBranch(randVar, bodyBB, endBB, cloneBB);

    return true;
}

Value *RandomControlFlow::alterVal(Value *startVar, BasicBlock *insertAfter)
{
    uint32_t code = rand() % 3;
    Value *result;
    if (code == 0)
    {
        // x = x * (x + 1) - x^2
        BinaryOperator *op1 = BinaryOperator::Create(Instruction::Add, startVar, CONST_I32(1), "", insertAfter);
        BinaryOperator *op2 = BinaryOperator::Create(Instruction::Mul, startVar, op1, "", insertAfter);
        BinaryOperator *op3 = BinaryOperator::Create(Instruction::Mul, startVar, startVar, "", insertAfter);
        BinaryOperator *op4 = BinaryOperator::Create(Instruction::Sub, op2, op3, "", insertAfter);
        result = op4;
    }
    else if (code == 1)
    {
        // x = 3 * x * (x - 2) - 3 * x^2 + 7 * x
        BinaryOperator *op1 = BinaryOperator::Create(Instruction::Mul, startVar, CONST_I32(3), "", insertAfter);
        BinaryOperator *op2 = BinaryOperator::Create(Instruction::Sub, startVar, CONST_I32(2), "", insertAfter);
        BinaryOperator *op3 = BinaryOperator::Create(Instruction::Mul, op1, op2, "", insertAfter);
        BinaryOperator *op4 = BinaryOperator::Create(Instruction::Mul, startVar, startVar, "", insertAfter);
        BinaryOperator *op5 = BinaryOperator::Create(Instruction::Mul, op4, CONST_I32(3), "", insertAfter);
        BinaryOperator *op6 = BinaryOperator::Create(Instruction::Mul, startVar, CONST_I32(7), "", insertAfter);
        BinaryOperator *op7 = BinaryOperator::Create(Instruction::Sub, op3, op5, "", insertAfter);
        BinaryOperator *op8 = BinaryOperator::Create(Instruction::Add, op6, op7, "", insertAfter);
        result = op8;
    }
    else if (code == 2)
    {
        // x = (x - 1) * (x + 3) - (x + 4) * (x - 3) - 9
        BinaryOperator *op1 = BinaryOperator::Create(Instruction::Sub, startVar, CONST_I32(1), "", insertAfter);
        BinaryOperator *op2 = BinaryOperator::Create(Instruction::Add, startVar, CONST_I32(3), "", insertAfter);
        BinaryOperator *op3 = BinaryOperator::Create(Instruction::Add, startVar, CONST_I32(4), "", insertAfter);
        BinaryOperator *op4 = BinaryOperator::Create(Instruction::Sub, startVar, CONST_I32(3), "", insertAfter);
        BinaryOperator *op5 = BinaryOperator::Create(Instruction::Mul, op1, op2, "", insertAfter);
        BinaryOperator *op6 = BinaryOperator::Create(Instruction::Mul, op3, op4, "", insertAfter);
        BinaryOperator *op7 = BinaryOperator::Create(Instruction::Sub, op5, op6, "", insertAfter);
        BinaryOperator *op8 = BinaryOperator::Create(Instruction::Sub, op7, CONST_I32(9), "", insertAfter);
        result = op8;
    }
    return result;
}

char RandomControlFlow::ID = 0;

// hlw ��optʹ��ʱ�Ĳ���
static RegisterPass<RandomControlFlow> X("rcf", "RandomControlFlow");