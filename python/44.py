#local and global variables

#1.local variable

x=24
print("first variable x ",x)

def hello():
    x=25
    return x
print(hello())

print(x)


#2.global variable

x=24
print("first variable x ",x)

def hello():
    global x
    x=25
    return x
print(hello())

print(x)