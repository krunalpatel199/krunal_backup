#include<stdio.h>

int main()
{
    int maths,science;
    
    printf("enter your maths marks:\n");
    scanf("%d",&maths);

    printf("enter your science marks:\n");
    scanf("%d",&science);

    if (maths>=50 && science>=50)
    {
        printf("you recieve 45 coin");
    }
    else if (science>=50)
    {
        printf("you recieve 15 coin");
    }
    else if (maths>=50)
    {
        printf("you recieve 15 coin");
    }
    else{
        printf("you dont recieve a coin");
    }
    
    
    

    return 0;
}
