#parameters and arguments

def add(x,y):            #parameters
    print(x+y)

add(2,3)                 #arguments
add(4,5)



def rect(length,width):
    print("the area of the rectangle is",length*width)

rect(12,3)



def hello(name):
    print("hello my name is",name)

hello("krunal")


#arbitery arguments

def hi(*name):
    print("my name is",name[0])

hi("viral","rutlo","adi")    