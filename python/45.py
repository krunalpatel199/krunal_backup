#problem solving 13

#1.write a function to find maximum of three numbers in python.
def maximum_num(val1,val2,val3):
    if val1>val2 and val1>val3:
        print(val1,"is the greatest")
    elif val2>val1 and val2>val3:
        print(val2,"is the greatest")
    else:
        print(val3,"is the greatest")

maximum_num(12,5,9)              


#2.write a python function to create and print a list where the values are square of numbers between 1 to 30.
def create_list():
    l=[]
    for i in range(1,31):
        l.append(i**2)

    return l
print(create_list())    


#3.write a python function that takes a number as a parameter and check if the number is prime or not.
def check_prime(num):
    if num==1:
        print("it is a prime number")
    if num==2:
        print("it is a prime number")
    if num>2:
        for i in range(2,num):
            if num%i==0:
                print("it is not a prime number")
                break
        else:
            print("it is a prime number")

check_prime(11)  


#4.write a python function to sum all the numbers in a list.
def add(numbers):
    total=0
    for i in numbers:
        total=total+i
    return(total)
print(add([12,4,3,5,6,7]))    


#5.write a python program to solve the fibonacci sequence using recursion.
def fs(num):
    if num==1:
        return (0)
    elif num==2:
        return (1)
    else:
        return (fs(num-1)+fs(num-2))
    
print(fs(7))    