#list iteration

#1.iteration using for loop
a=["hulk","thor","ironman","captain america"]
for i in a:
    print(i)

#2.iteration using for loop with range and length function
for i in range(len(a)):
    print(a[i])
    
#3.iteration using while loop
i=0
while i<len(a):
    print(a[i])
    i+=1

#4.iteration using short-hand for loop
[print (i) for i in a]