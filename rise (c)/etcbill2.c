#include <stdio.h>

float electricitybill(){

    char customername;
    int consumerid;
    int unit;
    float total;

    printf("enter the name of customer:");
    scanf("%s",&customername);

    printf("enter the customerid:");
    scanf("%d",&consumerid);

    printf("enter the unit:");
    scanf("%d",&unit);

    if(unit<=100){
        printf("you're charged 5 rs per unit.\n");
        total=unit*5;
    }
    else if(unit>100 && unit<=200){
        printf("you're charged 7 rs per unit.\n");
        total=unit*7;
    }
    else{
        printf("you're charged 10 rs per unit.\n");
        total=unit*10;
    }

    if(total>2000){
        printf("you're charged 5percent surcharge.\n");
       total+=total*0.05;
    }
    return total;

    printf("consumer name is:%s\n",customername);
    printf("consumer id is  :%d\n",consumerid);    
    printf("total unit  is  :%d\n",unit);
    printf("total bill is   :%.2f\n",total);    

}

int main(){

    float total_bill=electricitybill();
    printf("your total bill is:%.2f",total_bill);

    return 0;

}