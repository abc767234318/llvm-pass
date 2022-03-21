#include "../include/SplitBasicBlock.h"

namespace
{
    class SplitBasicBlock : public FunctionPass{
        public:
            static char ID;
            SplitBasicBlock():FunctionPass(ID){};

            bool runOnFunction(Function &F);

            //对单个基本块执行分裂操作
            void split(BasicBlock *BB);

            //判断一个基本块中是否含有phi指令
            bool containsPHI(BasicBlock *BB);
    }
} // namespace

bool SplitBasicBlock::runOnFunction(Function &F){
    //第一步，保存之前所有的基本块
    vector<BasicBlock*> origBB;
    for(BasicBlock &BB : F){
        origBB.push_back(&BB);
    }
    //第二步，对每个不包含PHI指令的基本块执行分裂操作
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
  //计算分裂后每个基本块大小
  //原基本块大小 /分裂数量
  int splitSize = BB->size() / splitNum;
  if(splitSize){
    for(int i = 0;i < splitNum;i++){
      int cnt = 0;
      for(Insruction &I : *curBB){
        if(++cnt == splitSize){
          //在 I 指令处对基本块进行分割
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