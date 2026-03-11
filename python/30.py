#conversion of tuples and tuple functions

#1.conversion

a=("nokia","oneplus","samsung")
print(a)
print(type(a))

a=list(a)
print("after conversion:",type(a))

a.append("apple")
print(a)

a=tuple(a)
print(a)
print(type(a))


#2.function

print(a.count("redmi"))
print("the index of nokia is",a.index("nokia"))
