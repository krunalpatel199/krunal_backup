#problem solving 11

#1.write a python program to sort dictionary by value.
a={"a":12,"b":23,"c":6,"d":91,"e":45}
a=sorted(a.values())
print(a)

#2.write a python script to print a dictionary where the keys are numbers between 1 to 15 and the values are square of keys.
a={}
for i in range(1,16):
    a[i] = i**2
    print(a)

#3.write a program to multiply all the items in a dictionary.
b={"a":1,"b":2,"c":3,"d":4,"e":5}
print(b["c"])
product=1
for i in b:
    product *= b[i]
print(product)

#4.write a program to sort a dictionary by key.
c={12:"a",56:"c",23:"c",48:"d",91:"e"}
c=sorted(c.keys())
print(c)
