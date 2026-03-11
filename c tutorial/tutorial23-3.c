#include<stdio.h>

int main()
{
    int marks[2][4]={{23,45,56,67},{45,56,67,78}};

    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 4; j++)
        {
            printf("the value of %d,%d element is:%d\n",i,j,marks[i][j]);
        }
        
    }
    
    return 0;
}
