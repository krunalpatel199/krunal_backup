#problem solving 2

#1.write a program to check if a number is positive.

num=5
if num>=0:
    print("number is positive")

#2.write a program to check whether a number is odd or even.
num=6
if num%2==0:
    print("number is even")
else:
    print("number is odd")

#3.write a program to create area calculator.
print("AREA CALCULATOR")
print("press 1 to get area of square")
print("press 2 to get area of rectangle")
print("press 3 to get area of circle")

choice=int(input("select number between 1-3:"))

if choice==1:
    side=float(input("enter the length of one side: "))
    area=side**2
    print("the area of square is:",area)

elif choice==2:
     length=float(input("enter the length of rectangle:"))
     width=float(input("enter the width of rectangle:"))
     area=length*width
     print("the area of rectangle is:",area)

elif choice==3:
    radius=float(input("enter the radius of the circle: "))
    area=((22/7)*(radius**2))
    print("the area of the circle is", area) 

else:
    print("your choice is not acceptable")

#4.write a program check whether the passed letter is vowel or not.
letter=input("enter letter: ")
print(letter)

if letter in "aeiou":
    print("it's vowel")
else:
    print("not vowel")
        


#5.write a program to check if anumber is a single digit number, 2-digit number and so on.. , up to 5 digits.
num = int(input("enter a number: "))
print("number is:",num)

if num>=0 and num<10:
    print("single digit number")
elif num>=10 and num<100:
    print("2-digit number")
else:
    print("more than 2 digit number")
