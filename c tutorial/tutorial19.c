// with arguments and with return value
#include <stdio.h>

int sum(int a,int b)
{
    return a+b;
}

int main()
{
    int a,b,c;
    a=5;
    b=56;
    c=sum(a,b);
    printf("sum is:%d\n",c);
    return 0;
}
