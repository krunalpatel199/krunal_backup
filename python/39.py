#problem solving 12

#1.write a program to find max and min in a set.
a={12,56,34,8,90,1,57}
maximum=max(a)
minimum=min(a)
print("the maximum value is:",maximum)
print("the minimum value is:",minimum)

#2.write a program to fnd common elements in three lists using sets.
b=[1,5,68,2]
c=[4,5,6,7]
d=[1,9,6,2,5]
print(set(b) & set(c) & set(d))

#3.write a program to find differnce between two sets.
e={1,5,6,8,2}
f={1,9,6,2,5}
print(e.difference(f))

#4.write a python program to remove an item from a set if it is present in the set.
k={1,5,6,8,2}
k.discard(8)
print(k)

#5.write a python program to check if a set is a subset of another set.
x={1,2,3,4,5,6}
y={5,6}

print(y.issubset(x))
