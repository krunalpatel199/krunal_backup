//salary calculator
// if employee is permanent then 10% he need to pay and contract have to pay 5% tax and intern don't want to pay tax
// if permanent employee salary is greater than 50000 than bonus is 5000



#include <stdio.h>

float permanent(float basic) {
    float hra, da, total_salary,tax,salary,bonus=0;
    hra = basic * 0.2;   
    da = basic * 0.1;   
    salary = basic + hra + da;
    
    if(salary>50000){
        bonus=5000;
    }
    tax=salary*0.10;
    
    total_salary=salary+bonus-tax;
    
    printf("Permanent Employee Salary: %f\n", total_salary);
    return total_salary;
}

float contract(float fixedpay) {
    printf("Contract Employee Salary: %f\n", fixedpay);
    return fixedpay;
}

float intern(float stipend) {
    printf("Intern Stipend: %f\n", stipend);
    return stipend;
}

int main() {
    int emptype, n, i;
    float salary[50];
    float total = 0, min, max;

    printf("Enter number of employees: ");
    scanf("%d", &n);
     printf("\nChoose Employee Type:\n");
        printf("1. Permanent Employee\n");
        printf("2. Contract Employee\n");
        printf("3. Intern\n");
        printf("Enter choice: ");
        scanf("%d", &emptype);

    for (i = 0; i < n; i++) {
       
        switch (emptype) {
            case 1: {
                float basic;
                printf("Enter the basic salary: ");
                scanf("%f", &basic);
                if (basic > 0) {
                    salary[i] = permanent(basic);
                } else {
                    printf("Invalid salary input!\n");
                    salary[i] = 0;
                }
                break;
            }
            case 2: {
                float fixedpay;
                printf("Enter the fixed pay: ");
                scanf("%f", &fixedpay);
                salary[i] = contract(fixedpay);
                break;
            }
            case 3: {
                float stipend;
                printf("Enter the stipend: ");
                scanf("%f", &stipend);
                salary[i] = intern(stipend);
                break;
            }
            default:
                printf("Invalid employee type!\n");
                salary[i] = 0;
        }
    }

    min = max = salary[0];

    printf("\nEmployee Salary Details\n");
    for (i = 0; i < n; i++) {
        printf("Employee %d Salary: %f\n",i+1, salary[i]);
        total += salary[i];
        if (salary[i] < min){
            min = salary[i];
        }
        if (salary[i] > max){
            
         max = salary[i];
    }
    }

    printf("\nTotal Salary of all employees: %f\n", total);
    printf("Minimum Salary: %f\n", min);
    printf("Maximum Salary: %f\n", max);

    return 0;
}
