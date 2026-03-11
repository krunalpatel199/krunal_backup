//call by reference

#include<stdio.h>

void change(int *x){
    *x=100;
    // printf("%d",x);
}

int main(){
    int a=10;
    change(&a);
    printf("%d",a);
}
