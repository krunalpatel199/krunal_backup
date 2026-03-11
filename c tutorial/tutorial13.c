#include <stdio.h>

int main()
{
    int i = 0;
    int num;

    printf("enter the value of num:\n");
    scanf("%d", &num);

    do
    {
        printf("%d\n", i);
        // printf("%d\n",i+1); (if 1 thi start karvu hoi)
        i = i + 1;

    } while (i < num);

    return 0;
}
