#include <stdio.h>
// if we write function after main function it cant run but if we declare function first then it would execute

int sum(int a,int b);

int main()
{
    int a,b,c;
    a=5;
    b=56;
    c=sum(a,b);
    printf("sum is:%d\n",c);
    return 0;
}
int sum(int a,int b)
{
    return a+b;
}