//swapping the numbers
//a=12,b=20,c=40  after swapping a=20,b=40,c=12

#include<stdio.h>

int main(){

    int a=10;
    int b=20;
    int temp;
    int *p1,*p2;
    p1=&a;
    p2=&b;

    printf("%d\n",a);
    printf("%d\n",b);

    temp=*p1;
    *p1=*p2;
    *p2=temp;

    printf("%d\n",*p1);
    printf("%d\n",*p2);

    return 0;
}