#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CommandLine.h"
#include<vector>

using std::vector;
using namespace llvm;

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
    };
} // namespace

// ��ѡ�Ĳ�����ָ��һ��������ᱻ���ѳɼ��������飬Ĭ��ֵΪ 2
//static cl::opt<int> SplitNum("split-num", cl::init(0), cl::desc("Split <split_num> time(s) each BB"));
int SplitNum = 2;

bool SplitBasicBlock::runOnFunction(Function &F){
    if(SplitNum > 0){
        // ��һ��������ԭ�ȵ����л�����
        vector<BasicBlock*> origBB;
        for(BasicBlock &BB : F){
            origBB.push_back(&BB);
        }
        // �ڶ�������ÿ�������� PHI ָ��Ļ�����ִ�з��Ѳ���
        for(BasicBlock *BB : origBB){
            if(!containsPHI(BB)){
                split(BB);
            }
        }
        return true;
    }
    return false;
}

void SplitBasicBlock::split(BasicBlock *BB){
    // ������Ѻ�ÿ��������Ĵ�С
    // ԭ������Ĵ�С / ������Ŀ������ȡ����
    int splitSize = (BB->size() + SplitNum - 1) / SplitNum;
    for(int i = 1;i < SplitNum;i ++){
        BasicBlock *curBB = BB;
        int cnt = 0;
        for(Instruction &I : *curBB){
            if(cnt++ == splitSize){
                // �� I ָ��Ի�������зָ�
                curBB = curBB->splitBasicBlock(&I);
                break;
            }
        }
    }
}

bool SplitBasicBlock::containsPHI(BasicBlock *BB){
    for(Instruction &I : *BB){
            return true;
        }
    return false;
}

char SplitBasicBlock::ID = 0;
static RegisterPass<SplitBasicBlock> X("split", "Split a basic block into multiple basic blocks.");