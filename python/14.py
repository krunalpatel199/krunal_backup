#problem solving 3

#1.write a program to find a sum of all the even numbers up to 50.

sum=0
for i in range(0,51):
    if i%2==0:
        sum+=i

print("the sum of all even 50 numbers are: ",sum) 


#2.write a program to write first 20 numbers and their squared numbers.

for i in range(1,21):
    print(i,i**2)


#3.write a program to find sum of first 10 odd numbers using while loop.
sum=0
n=1
while n<=20:
    if n%2!=0:
        sum+=n
    n+=1
print(sum)


#4.write a program to check if a number is divisible by 8 and 12, up to 100 numbers
for i  in range(1,101):
    if i%8==0 and i%12==0:
        print(i)


#5.write a program to create a billing system at supermarket.
while True:
    name=input("enter customer's name: ")
    total=0

    while True:
        amount=float(input("enter amount: "))
        quantity=float(input("enter quantity: "))
        total += amount*quantity
        repeat=input("do you want to add more items? (yes/no): ")
        if repeat=="no" or repeat=="NO":
            break

    print("-"*40)
    print("name: ",name)
    print("total amount to be paid: ",total)
    print("-"*40)
    print("*************HAPPY SHOPPING*************")

    repeat1=input("do you want to go on next customer: (yes/no)")
    if repeat=="no" or repeat=="No":
        break
