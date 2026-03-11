#include <stdio.h>

float calculate_grocery_bill(){

    float price;
    float quantity;
    float total=0;
    float tax_rate=0.05;
    float tax_collected;
    float item_count=0;

    int n;
    printf("how many items?");
    scanf("%d\n",&n);

    for(int i=0;i<n;i++){
        printf("enter the price of items:%d\n",i+1);
        scanf("%d",&price);

        if(price<0){
            printf("invalid price.");
            i--;
            continue;
        }

        printf("enter the quantity:%d\n",i+1);
        scanf("%d",&quantity);

        if(quantity<=0){
            printf("invalid quanity");
            i--;
            continue;
        }

        float item_total=price*quantity;
        total+=item_total;
        item_count++;

        if(total>5000)
            total -= total*0.20;
        
        else if(total>=3000)
            total -= total*0.10;
        
        tax_collected=total*tax_collected;
        float final_amount=total+tax_collected;

        printf("total bill amount: %.2f\n",final_amount);
        printf("total tax collected: %.2f\n",tax_collected);
        printf("total quantity: %.2f\n",quantity);
    }



}

int main(){
    float final_amount=0;

    final_amount=calculate_grocery_bill();

    printf("amount%.2f",final_amount);

}