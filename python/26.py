#list function
a=["thor","hulk","ironman","captain america","hulk"]
print(a)

#to find the length of a list
print(len(a))

#to count on occurence of a particular element
print(a.count("hulk"))

#to add to the list
a.append("spiderman")
print(a)

#to add to a specific location
a.insert(1,"vision")
print(a)

#to remove from a list
a.remove("captain america")
print(a)

#to remove from a certain location
print(a.pop(1))
print(a)


b=["thor","hulk","ironman","captain america"]

#to create a copy of a list
c=b.copy()
print(c)

#to access an element
print(b.index("ironman"))

#to entend the list
c=["vision","spiderman"]
b.extend(c)
print(b)

#to reverse the list
b.reverse()
print(b)

#to sort the list  (arrange in ascending order)
b.sort()
print(b)

#to clear all the data from the list
b.clear()
print(b)
