//electricity bill calculator (calculate electricity bill based on units, if unit less than or equal to 100 then rs.2 per unit, if units between 101-300 then rs.3 per unit, if greater than 300 unit then rs.5 per unit, calculate the total bill)

#include <stdio.h>

int main() {
    int unit;
    int total;
    
    printf("enter units:");
    scanf("%d",&unit);
    
    if(unit<=100){
        total=unit*2;
        printf("you're charged RS.2/- per unit\n");
    }
    else if(unit>100 && unit<=300){
        total=unit*3;
        printf("you're charged RS.3/- per unit\n");
    }
    else{
        total=unit*5;
        printf("you're charged RS.5/- per unit\n");
    }
    printf("your electricity bill is:%d",total);
    return 0;
}