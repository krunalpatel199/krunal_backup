#problem solving 8

#1.take an input from a user as a string then, reverse it.
a=input("enter anything here: ")
print(a[::-1])

#2.write a program to check if a string contains only digits.
b=input("enter anything here:")
print(b.isdigit())
if b==True:
    print("it contains only digits")
else:
    print("it doesn't contain only digits")

#3.write a program to check if a string is palindrome.
c=input("enter anything here: ")
rev=c[::-1]
if c==rev:
    print("it is palindrome")
else:
    print("it is not palindrome")    

#4.write a program to find number of vowels in a stirng.
d=input("enter anything here: ")
vowels=0
for i in d:
    if i=="a" or i=="e" or i=="i" or i=="o" or i=="u":
        vowels+=1

print("the number of vowels in the following string are",vowels)        

#5.write a program to check if every word in a string begins with a capital letter.
e=input("enter anything here: ")
print(e.istitle())
