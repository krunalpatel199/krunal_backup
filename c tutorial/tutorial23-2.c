#include<stdio.h>

int main()
{
    int marks[5]={78,66,55,23,67};
   // int marks[5]={78,66,55,23,67};   array size declare naa kare to pan chale because value detect kari lese

    for (int i = 0; i < 5; i++)
    {
        // printf("enter the value of %d element of the array:\n",i);
        // scanf("%d",&marks[i]);

        printf("enter the value of %d element is:%d\n",i,marks[i]);
    }
    
    return 0;
}
