#string function part-3

#endswith() - returns true if the string ends with the specified value
a="krunal"
print(a,a.endswith("l"))

#startwith() - returns true if the string starts with the specified value
b="krunal patel"
print(b,b.startswith("k"))
print(b,b.startswith("p",7,12))

#swapcase() - swap cases, lower case become upper case and vice versa
c="krunal"
d="KRUNAL"
print(c,c.swapcase())
print(d,d.swapcase())

#strip() - returns a trimmed version of the string
e="****krunal...."
print(e,e.strip("*,., "))

#split() - split the string at the specified separator, and returns a list
f="#OOFD#HBD"
g="hello. my name is krunal."
print(f,f.split("#"))
print(g,g.split("."))

#ljust() - returns a left justified version of the string
h="hello"
i=h.ljust(20,"*")
print(i, "how are you")

#rjust() - returns a right justified version of the string
j="krunal"
k=j.rjust(20,"*")
print(k, "how are you")

#replace() - returns a string where a specified value is replaced with a specified value
l="krunal"
print(l,l.replace("krunal","BMW"))

#rindex() - searches the string for a specified value and returns the last position of where it was found
m="BMW have best engine"
print(m.rindex("engine"))

#rfind() - searches the string for a specified value and returns the last position of where it was found
n="krunal have laptop"
print(n.rfind("laptop"))