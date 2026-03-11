#set functions

a={"ironman","hulk","thor","captain america"}

#add
a.add("spiderman")
print(a)

#pop
a.pop()
print(a)

#remove
a.remove("thor")
print(a)

#discard
a.discard("hulk")
print(a)

#copy
b=a.copy()
print(b)


x={"ironman","hulk","thor","captain america"}
y={"superman","batman","wonder-woman"}
z={"hulk","thor"}
e={"hulk","thor","spiderman"}

#isdisjoint
print(x.isdisjoint(y))
print(x.isdisjoint(z))

#issubset
print(y.issubset(x))
print(z.issubset(x))

#issuperset   #full set present in other set or not
print(x.issuperset(z))

#update
x.update(e)
print(x)

#clear
x.clear()
print(x)


k={"ironman","hulk","thor","captain america"}
h={"superman","batman","wonder-woman"}
s={"hulk","thor","spiderman"}

#union
print(k.union(s))

#difference
#a=a-b
print(k.difference(s))

#differece update
k.difference_update(s)
print(k)

#intersection
print(k.intersection(s))

#intersection update
k.intersection_update(s)
print(k)

#symmetric difference     (ignore common values)
m=k.symmetric_difference(s)
print(m)

#symmetric difference update
k.symmetric_difference_update(s)
print(k)
