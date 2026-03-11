//array and pointer arithmetic in c

// if we add 1 in integer of 3 then answer is 4 
// but we add 1 in pointer or arr of 4 then answer is 8 because of memory

#include<stdio.h>

int main()
{
    int a=34;
    int *ptra= &a;

    printf("%d\n",ptra);
     ptra++;
    printf("%d\n",ptra);
    printf("%d\n",ptra-2);

    return 0;
}
