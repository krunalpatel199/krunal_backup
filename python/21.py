#problem solving 6

#1.write a program to get fibonacci series up to 10 numbers.

a=0
b=1

print(a)
print(b)
for i in range(2,11):
    c=a+b
    a=b
    b=c
    print(c)

#extra
n=int(input("enter number: "))
if n==1:
    print(1)
else:
    print(a)
print(b)
for i in range(2,n):
    c=a+b
    a=b
    b=c
    print(c)


#2.write a program to check if a number is prime or not.
num=int(input("enter a number here: "))

if num<=1:
    print("it's not a prime number")
else:
    for i in range(2,num):
        if num%2==0:
            print("number is not a prime number")
            break
        else:
            print("it's a prime number")

            
#3.write a program to find a palindrome of integers.
num=int(input("enter a number here:"))
temp=num
rev = 0
while num>0:
    dig=num%10
    rev=rev*10+dig
    num=num//10

if rev==temp:
    print("it is palindrome")
else:
    print("it is not palindrome")


#4.write a program to create an area calculator.

#already done
