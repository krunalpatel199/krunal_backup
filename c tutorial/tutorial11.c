#include<stdio.h>

int main()
{
    int age,marks;

    printf("enter your age:\n");
    scanf("%d",&age);

    printf("enter your marks:\n");
    scanf("%d",&marks);
    
    switch (age)
    {
    case 1:
        printf("your age is 1\n");

        switch (marks)
        {
        case 45:
            printf("your marks is 45\n");
            break;
        
        default:
        printf("your marks is not 45\n");
        }
        break;

    case 2:
        printf("your age is 2\n");    
        break;

    default:
        printf("age is not 1,2\n");
    }
    return 0;
}
