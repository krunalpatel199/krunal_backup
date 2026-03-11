#return statemetn and recursion in functions

#1.return statement
def hello():
    return("hello world")

print(hello())


def add(a,b):
    return("the addition of two numbers is:",a+b)
print(add(4,5))


#2.recursion function

#def hello():
#    print("hello")
#    return(hello())
#print(hello())

def fact(n):
    if n==1:
        return 1
    else:
        return (n*fact(n-1))
    
print(fact(5))    