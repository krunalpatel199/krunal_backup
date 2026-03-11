#introduction to tuples

a="apple","mango","banana",1,67,2.33
print(type(a))

b=("apple","mango","banana")
print(type(b))

# a.add("kiwi")  #shows error 

#cause once tuple is created it can't added, remove or modify)


#slicing and iteration of tuples

#slicing
c=("oneplus","vivo","redmi","samsung","nokia")
print(c[1:3])
print(c[:3])
print(c[2:])
print(c[1::2])
print(c[::-1])
print(c[2::-1])

#iteration 

#1.with for loop
for i in c:
    print(i)

#2.along with range and length in for loop
for i in range(len(c)):
    print(c[i])

#3.along with while loop
i=0
while i < len(c):
    print(c[i])
    i+=1
