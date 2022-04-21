#include "llvm/InitializePasses.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/Utils.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Utils/Local.h"
#include "llvm/Transforms/Obfuscation/Utils.h"
#include "llvm/Transforms/Obfuscation/CryptoUtils.h"
#include <vector>
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"

using namespace llvm;
using std::vector;

namespace {
    class Flattening : public FunctionPass{
        public:
            static char ID;
            bool enable;

            Flattening() : FunctionPass(ID){
                
            }

            void flatten(Function &F);
            void fixStack(Function &F);
            bool runOnFunction(Function &F);
    };

}

void Flattening::fixStack(Function &F) {
    vector<PHINode*> origPHI;
    vector<Instruction*> origReg;
    BasicBlock &entryBB = F.getEntryBlock();
    for(BasicBlock &BB : F){
        for(Instruction &I : BB){
            if(PHINode *PN = dyn_cast<PHINode>(&I)){
                origPHI.push_back(PN);
            }else if(!(isa<AllocaInst>(&I) && I.getParent() == &entryBB) 
                && I.isUsedOutsideOfBlock(&BB)){
                origReg.push_back(&I);
            }
        }
    }
    for(PHINode *PN : origPHI){
        DemotePHIToStack(PN, entryBB.getTerminator());
    }
    for(Instruction *I : origReg){
        DemoteRegToStack(*I, entryBB.getTerminator());
    }
}

bool Flattening::runOnFunction(Function &F){

    INIT_CONTEXT(F);
    flatten(F);
    return true;
}
 
void Flattening::flatten(Function &F){


    outs() << "111" << "\n";
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
    outs() << "222" << "\n";
    if(BranchInst *br = dyn_cast<BranchInst>(entryBB.getTerminator())){
        if(br->isConditional()){
            BasicBlock *newBB = entryBB.splitBasicBlock(br, "newBB");
            origBB.insert(origBB.begin(), newBB);
        }
    }
   
    // �����ַ���ͷ��ؿ�
    BasicBlock *dispatchBB = BasicBlock::Create(F.getContext(), "dispatchBB", &F, &entryBB);
    BasicBlock *returnBB = BasicBlock::Create(F.getContext(), "returnBB", &F, &entryBB);
    BranchInst::Create(dispatchBB, returnBB);
    entryBB.moveBefore(dispatchBB);
    // ȥ����һ��������ĩβ����ת
    entryBB.getTerminator()->eraseFromParent();
    // ʹ��һ����������ת��dispatchBB
    BranchInst *brDispatchBB = BranchInst::Create(dispatchBB, &entryBB);

    // ����ڿ����alloca��storeָ�������ʼ��switch��������ʼֵΪ���ֵ
    uint32_t randNumCase = rand()/1000000;
    AllocaInst *swVarPtr = new AllocaInst(TYPE_I32, 0, "swVar.ptr", brDispatchBB);
    new StoreInst(CONST_I32(randNumCase), swVarPtr, brDispatchBB);
    // �ڷַ������loadָ���ȡswitch����
    LoadInst *swVar = new LoadInst(TYPE_I32, swVarPtr, "swVar", false, dispatchBB);
    // �ڷַ������switchָ��ʵ�ֻ�����ĵ���
    BasicBlock *swDefault = BasicBlock::Create(F.getContext(), "swDefault", &F, returnBB);
    BranchInst::Create(returnBB, swDefault);
    SwitchInst *swInst = SwitchInst::Create(swVar, swDefault, 0, dispatchBB);
    
    // ��ԭ��������뵽���ؿ�֮ǰ��������caseֵ
    for(BasicBlock *BB : origBB){
        BB->moveBefore(returnBB);
        swInst->addCase(CONST_I32(randNumCase), BB);
        randNumCase = rand()/1000000;
    }

    // ��ÿ���������������޸�switch������ָ�����ת�����ؿ��ָ��
    for(BasicBlock *BB : origBB){
        // retn BB
        if(BB->getTerminator()->getNumSuccessors() == 0){
            continue;
        }
        // ��������ת
        else if(BB->getTerminator()->getNumSuccessors() == 1){
            dbgs() << *swInst;
            BasicBlock *sucBB = BB->getTerminator()->getSuccessor(0);
            BB->getTerminator()->eraseFromParent();
            outs() << "444" << "\n";
            dbgs() << *sucBB;
            ConstantInt *numCase = swInst->findCaseDest(sucBB);
            outs() << "333" << "\n";
            new StoreInst(numCase, swVarPtr, BB);
            BranchInst::Create(returnBB, BB);
        }
        // ������ת
        else if(BB->getTerminator()->getNumSuccessors() == 2){
            dbgs() << *swInst;
            outs() << "444" << "\n";
            dbgs() << *BB->getTerminator()->getSuccessor(0);
            dbgs() << *BB->getTerminator()->getSuccessor(1);
            ConstantInt *numCaseTrue = swInst->findCaseDest(BB->getTerminator()->getSuccessor(0));
            ConstantInt *numCaseFalse = swInst->findCaseDest(BB->getTerminator()->getSuccessor(1));
            outs() << "333" << "\n";
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
