#string manipulation

a="clean hands cannot build empires {}"
name="krunal"

#1.length
print(len(a))

#2.count
print(a.count("a"))

#3.upper
print(a.upper())

#4.lower
print(a.lower())

#5.index
print(a.index("hands")) #print(a.index("n",1,12))

#6.capitalize
print(a.capitalize())

#7.casefold
print(a.casefold())

#8.find
print(a.find("h"))

#9.format
print(a.format( name))

#10.center
print(name.center(20,"*"))