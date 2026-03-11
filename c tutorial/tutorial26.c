#include<stdio.h>

int main()
{
    //lets learn about pointers
    int a=55;
    int *ptra= &a;

    printf("the adress of pointer to a is %p\n",&ptra);
    printf("the adress of a is %p\n", &a);
    printf("the value of a is %d\n",*ptra);
    printf("the value of a is %d\n",a);
    return 0;
}
