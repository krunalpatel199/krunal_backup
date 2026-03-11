#include<stdio.h>

int main()
{
    char input;
    float kmsTomiles = 0.621371;
    float inchesTofoot = 0.0833333;
    float cmsToinches = 0.393701;
    float poundTometers = 0.453592;
    float inchesTometers = 0.0254;
    float first,second;

    while (1)
    {
        printf("enter the input character. q to quit\n    1. kms to miles\n    2.inches to foot\n    3. cms to inches\n    4.pound to kgs\n      5.inches to meters\n");

        scanf("%c\n",&input);

        switch (input)
        {
        case 'q':
            printf("quitting the program...");
            goto end;
            break;

        case '1':
            printf("enter the quantity in terms of first unit\n");
            scanf("%f",&first);
            second = first * kmsTomiles;
            printf("%f kms is equal to %f miles\n",first,second);
            break; 

        case '2':
            printf("enter the quantity in terms of first unit\n");
            scanf("%f",&first);
            second = first * inchesTofoot;
            printf("%f inches is equal to %f foot\n",first,second);
            break;  

        case '3':
            printf("enter the quantity in terms of first unit\n");
            scanf("%f",&first);
            second = first * cmsToinches;
            printf("%f cms is equal to %f inches\n",first,second);
            break; 

        case '4':
            printf("enter the quantity in terms of first unit\n");
            scanf("%f",&first);
            second = first * poundTometers;
            printf("%f pound is equal to %f meters\n",first,second);
            break; 

        case '5':
            printf("enter the quantity in terms of first unit\n");
            scanf("%f",&first);
            second = first * inchesTometers;
            printf("%f inches is equal to %f meters\n",first,second);
            break;                   
        
        default:
        printf("this");
            break;
        }
    }
    end:

    return 0;
}
