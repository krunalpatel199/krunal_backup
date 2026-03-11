//traffic signal simulator (user input a signal numbers, 1 will be red, 2 will be yellow, 3 will be green)

#include <stdio.h>

int main() {
    int button;
    printf("enter a signal button:");
    scanf("%d",&button);
    
    switch(button){
        case 1:
        printf("signal is red!");
        break;
        
        case 2:
        printf("signal is yellow!");
        break;
        
        case 3:
        printf("signal is green!");
        break;
        
        default:
        printf("you enter a wrong signal button");
    }
    
    return 0;
}