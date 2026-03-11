#introduction to loops

#1.for loop

for i in range (1,6):
    print(i)   #print("hello")

for i in range (1,6,2):
    print(i)

#multiplication table in for loop
n=int(input("enter a number:"))

for i in range (1,11):
    print(n,"x",i,"=",n*i)


#2.while loop

n=0

while n<=5:
    print(n)
    n += 1

#multiplication table in while loop

n=int(input("enter a number: "))
i=1
while i<11:
    print(n,"x",i,"=",n*i)
    i+=1

#3.while true loop

a = int(input("enter a number"))
b = int(input("enter a second number"))

while True:
    print (a+b)
    repeat = input("do you want to stop?")
    if repeat=="yes":
        break

#4.nested loop

for i in range (1,4):
    for j in range (1,11):
        print(j, end="")
    print(i)    


for i in range (1,6):
    for j in range(1, i+1):
        print(j, end="")
    print()
        