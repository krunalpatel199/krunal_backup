#Conditional statement

#1.if statement
marks=80
if marks>=90:
    print("eligible")
print("thank you")

#2.if-else statement
marks=87
if marks>=90:
    print("you are eligible for exam")
else:
    print("not eligible for exam")

#3.if-elif-else statement
marks=85

if marks>=90:
    print("you get a new bike")
elif marks >=80 and marks <90:
    print("you get a new phone")
else:
    print("you go to a trip")

#4.nested if statement
marks=80

if marks>=80:
    print("you will get a new phone")
    if marks>85:
        print("you will get an iphone")
    else:
        print("you will get an android phone")
else:
    print("you will not get a new phone")

#5.short-hand if statement
marks=80

if marks>=80: print("you will get a phone")

#6.short-hand if-else statement
marks=80

print("you will get a phone") if marks>=80 else print("you will not get a phone")