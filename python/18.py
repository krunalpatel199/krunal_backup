# string function part-2

a="hello"
b="123Hello"
c="123456"
d="HELLO"
e=" "
f="Hello 123"
g="1.234"

#isalnum - returns true if all characters in the string are alphanumeric
print(a,a.isalnum())
print(b,b.isalnum())
print(c,c.isalnum())
print(d,d.isalnum())
print(e,e.isalnum())
print(f,f.isalnum())
print(g,g.isalnum())

#isalpha - returns true if all characters in the string are in the alphabet
print(a,a.isalpha())
print(b,b.isalpha())
print(c,c.isalpha())
print(d,d.isalpha())
print(e,e.isalpha())
print(f,f.isalpha())
print(g,g.isalpha())

#isdecimal - returns true if all characters in the string are decimals
print(a,a.isdecimal())
print(c,c.isdecimal())
print(g,g.isdecimal())

#isdigit - returns true if all characters in the string are digits
print(a,a.isdigit())
print(c,c.isdigit())
print(g,g.isdigit())

#isanumeric - returns true if all characters in the string are numeric
print(a,a.isnumeric())
print(c,c.isnumeric())

#islower - returns true if all the characters in the stringre lower case
print(a,a.islower())
print(d,d.islower())

#isupper - returns true if all characters in the string are upper case
print(a,a.isupper())
print(d,d.isupper())

#isspace - returns true if all characters in the string are whitespaces
print(a,a.isspace())
print(e,e.isspace())
print(f,f.isspace())

#istitle - returns true if the string follows the rules of a title
print(b,b.istitle())
print(f,f.istitle())
