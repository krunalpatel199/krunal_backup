#iteration in dictionary

Student={"name":"john","class":6,"roll_no":1}

#printing all the key names one by one
for x in Student:
    print(x)

#printing all the value names one by one
for x in Student:
    print(Student[x])

#using value function
for x in Student.values():
    print(x)

#using items function
for x,y in Student.items():
    print(x,"-",y) 