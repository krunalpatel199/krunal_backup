#introduction to modules

#in-built modules in python

#(1) datetime
import datetime

x=datetime.datetime.now()
print(x)

y=datetime.datetime(2005,3,19)
print(y)
print(y.strftime("%A"))
print(y.strftime("%a"))
print(y.strftime("%m"))
print(y.strftime("%Y"))
print(y.strftime("%y"))


#(2) random
import random

a=random.randint(1,10)
print(a)

l=["heads","tails"]
b=random.choice(l)
print(b)


#(3) math
import math

m=max(13,67,45)
print("the maximum value is",m)

n=min(24,56,21)
print("the minimum value is",n)

k=pow(2,4)
print(k)

p=math.sqrt(49)
print(p)

g=abs(-12.345)
print(g)

j=math.ceil(2.4)
print(j)

e=math.floor(2.4)
print(e)
