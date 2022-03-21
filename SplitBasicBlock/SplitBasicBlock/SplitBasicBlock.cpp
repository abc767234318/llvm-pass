#include "../include/SplitBasicBlock.h"

namespace
{
    class SplitBasicBlock : public FunctionPass{
        public:
            static char ID;
            SplitBasicBlock():FunctionPass(ID){};

            bool runOnFunction(Function &F);

            //�Ե���������ִ�з��Ѳ���
            void split(BasicBlock *BB);

            //�ж�һ�����������Ƿ���phiָ��
            bool containsPHI(BasicBlock *BB);
    }
} // namespace

bool SplitBasicBlock::runOnFunction(Function &F){
    //��һ��������֮ǰ���еĻ�����
    vector<BasicBlock*> origBB;
    for(BasicBlock &BB : F){
        origBB.push_back(&BB);
    }
    //�ڶ�������ÿ��������PHIָ��Ļ�����ִ�з��Ѳ���
    for(BasicBlock *BB : origBB){
        if(!containsPHI(BB)){
            split(BB);
        }
    }
    return true;
}

bool SplitBasicBlock::containsPHI(BasicBlock *BB){
    for(Instruction &I : *BB){
        if(isa<PHINode>(&I)){
            return true;
        }
    }
}

void SplitBasicBlock::split(BasicBlock *BB){
  BasicBlock *curBB = BB;
  //������Ѻ�ÿ���������С
  //ԭ�������С /��������
  int splitSize = BB->size() / splitNum;
  if(splitSize){
    for(int i = 0;i < splitNum;i++){
      int cnt = 0;
      for(Insruction &I : *curBB){
        if(++cnt == splitSize){
          //�� I ָ��Ի�������зָ�
          curBB = curBB->splitBasicBlock(&I);
          break;
        }
      }
    }
  }
}

FunctionPass* llvm::createSplitBasicBlockPass(){
    return new SplitBasicBlock();
}


char SplitBasicBlock::ID = 0;
static RegisterPass<SplitBasicBlock> X("split", "Split a basic block into multiple basic blocks.");