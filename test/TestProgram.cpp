#include <cstdio>
#include <cstring>
#include <cstdlib>

int main(int argc, char *argv[]){ 
    printf("Welcome to LLVM world...\n");
    char *input = argv[1];
    printf("Your flag is: %s\n", input);
    int flag;
    scanf("input flag %d\n",&flag);
    int outlen;
    int i = 10;
    i = i + 10 - 12;
    i = i - i + i;
    i = i + 4;
    while (i != 0){
        flag++;
        printf("the flag is %d\n",flag);
        i--;
    }
    if(flag != 4){ 
        printf("Congratulations~\n"); 
        return 0;
    }else{
        printf("Sorry try again.\n"); 
        return -1;
    }
}