#problem solving

#1. write a program to display a person's name, age and address in three different lines.

name="krunal"
age=20
address="ankleshwar"

print(name)
print(age)
print(address)

#2. write a program to swap two variables.

a=20
b=30

a,b=b,a

print(b)
print(a)


a=20
b=30

temp=a
print(temp)

a=b
print(a)

b=temp
print(b)


#3.write a program to convert a float into integer.

a=4.5
print(type(a))

a=int(a)
print("after conversion:",type(a))


#4.write a program to take details from a student for ID-card and then print it in different lines.

name=input("enter ypur name: ")
age=int(input("enter your age: "))
division=input("enter your division: ")
contact=int(input("enter your contact no: "))
weight=float(input("enter your weight: "))

print(name)
print(age)
print(division)
print(contact)
print(weight)


#5.write a program to take an user input as integer then convert to float.

a=int(input("enter a number: "))
print(a)
print(type(a))

a=float(a)
print("after conversion: ",a)
print(type(a))

