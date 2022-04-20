#include "llvm/InitializePasses.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Obfuscation/Flattening.h"
#include "llvm/Transforms/Obfuscation/Utils.h"
#include "llvm/Transforms/Obfuscation/CryptoUtils.h"
#include <vector>

using namespace llvm;
using std::vector;
 
bool Flattening::runOnFunction(Function &F){
    if(enable && readAnnotate(&F).find("fla1")){
        INIT_CONTEXT(F);
        flatten(F);
        return true;
    }
    return false;
}
 
void Flattening::flatten(Function &F){
    // ����������������1������ƽ̹��
    if(F.size() <= 1){
        return;
    }
    // ���� getAnalysisUsage �������������ֶ����� LowerSwitchPass
    // FunctionPass *pass = createLowerSwitchPass();
    // pass->runOnFunction(F);
    // ������ڿ飨��һ�������飩����Ļ����鱣�浽һ�� vector �����У����ں�������
    // ���ȱ������л�����
    vector<BasicBlock*> origBB;
    for(BasicBlock &BB: F){
        origBB.push_back(&BB);
    }
    // ��vector��ȥ����һ��������
    origBB.erase(origBB.begin());
    BasicBlock &entryBB = F.getEntryBlock();
    // �����һ���������ĩβ��������ת����������
    if(BranchInst *br = dyn_cast<BranchInst>(entryBB.getTerminator())){
        if(br->isConditional()){
            BasicBlock *newBB = entryBB.splitBasicBlock(br, "newBB");
            origBB.insert(origBB.begin(), newBB);
        }
    }

    // �����ַ���ͷ��ؿ�
    BasicBlock *dispatchBB = BasicBlock::Create(*CONTEXT, "dispatchBB", &F, &entryBB);
    BasicBlock *returnBB = BasicBlock::Create(*CONTEXT, "returnBB", &F, &entryBB);
    BranchInst::Create(dispatchBB, returnBB);
    entryBB.moveBefore(dispatchBB);
    // ȥ����һ��������ĩβ����ת
    entryBB.getTerminator()->eraseFromParent();
    // ʹ��һ����������ת��dispatchBB
    BranchInst *brDispatchBB = BranchInst::Create(dispatchBB, &entryBB);

    // ����ڿ����alloca��storeָ�������ʼ��switch��������ʼֵΪ���ֵ
    uint32_t randNumCase = cryptoutils->get_uint32_t();
    AllocaInst *swVarPtr = new AllocaInst(TYPE_I32, 0, "swVar.ptr", brDispatchBB);
    new StoreInst(CONST_I32(randNumCase), swVarPtr, brDispatchBB);
    // �ڷַ������loadָ���ȡswitch����
    LoadInst *swVar = new LoadInst(TYPE_I32, swVarPtr, "swVar", false, dispatchBB);
    // �ڷַ������switchָ��ʵ�ֻ�����ĵ���
    BasicBlock *swDefault = BasicBlock::Create(*CONTEXT, "swDefault", &F, returnBB);
    BranchInst::Create(returnBB, swDefault);
    SwitchInst *swInst = SwitchInst::Create(swVar, swDefault, 0, dispatchBB);
    // ��ԭ��������뵽���ؿ�֮ǰ��������caseֵ
    for(BasicBlock *BB : origBB){
        BB->moveBefore(returnBB);
        swInst->addCase(CONST_I32(randNumCase), BB);
        randNumCase = cryptoutils->get_uint32_t();
    }

    // ��ÿ���������������޸�switch������ָ�����ת�����ؿ��ָ��
    for(BasicBlock *BB : origBB){
        // retn BB
        if(BB->getTerminator()->getNumSuccessors() == 0){
            continue;
        }
        // ��������ת
        else if(BB->getTerminator()->getNumSuccessors() == 1){
            BasicBlock *sucBB = BB->getTerminator()->getSuccessor(0);
            BB->getTerminator()->eraseFromParent();
            ConstantInt *numCase = swInst->findCaseDest(sucBB);
            new StoreInst(numCase, swVarPtr, BB);
            BranchInst::Create(returnBB, BB);
        }
        // ������ת
        else if(BB->getTerminator()->getNumSuccessors() == 2){
            ConstantInt *numCaseTrue = swInst->findCaseDest(BB->getTerminator()->getSuccessor(0));
            ConstantInt *numCaseFalse = swInst->findCaseDest(BB->getTerminator()->getSuccessor(1));
            BranchInst *br = cast<BranchInst>(BB->getTerminator());
            SelectInst *sel = SelectInst::Create(br->getCondition(), numCaseTrue, numCaseFalse, "", BB->getTerminator());
            BB->getTerminator()->eraseFromParent();
            new StoreInst(sel, swVarPtr, BB);
            BranchInst::Create(returnBB, BB);
        }
    }
    fixStack(F);
}


char Flattening::ID = 0;
// hlw ��optʹ��ʱ�Ĳ���
static RegisterPass<Flattening> X("fla", "Pass������Flattening");
