#problem solving 9

a=["ross","rachel","monica","joe"]

#1.write a program to swap first and forth element.
a[0],a[3]=a[3],a[0]
print(a)

#2.write a program to add a new value at second position.
a.insert(1,"krunal")
print(a)

#3.write a program to delete a value from 3rd position.
a.pop(2)
print(a)


b=[13,7,12,10]

#1.write a program to multiply all the numbers in the list.
mul=1
for i in b:
    mul*=i
    print(mul)

#2.write a program to get the largest number from the list.
b.sort()
print(b)
print("the largest value in the given list is",b[-1])

#3.write a program to get the smallest number from the list.
b.sort()
print(b)
print("the smallest value in the given list is",b[1])
