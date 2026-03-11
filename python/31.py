#problem solving 10

#1.convert the following dictionary into JSON format.

import json
Student_data = {"name":"david","age":13,"marks":87}
print(type(Student_data))
data=json.dumps(Student_data)
print(data)
print(type(data))

#2.access the value of age from the given data.

Student_data = '{"name":"david","age":13,"marks":87}'
data=json.loads(Student_data)
print(data["age"])

#3.pretty print following JSON data.

Student_data = {"name":"david","age":13,"marks":87}
data=json.dumps(Student_data,indent=4,separators=(",","="))
print(data)

#4.sort the following JSON keys and write them into a file.

Student_data = {"name":"david","age":13,"marks":87}
f = open("demo.json","w")
data = json.dumps(Student_data,indent=4,sort_keys=True)
f.write(data)

#5.access the nested key marks from the following nested data

Student_data = """{"student":{
    "grade":{
        "name":"david",
        "marks":87
    }
}
}"""

data = json.loads(Student_data)
print(data["student"]["grade"]["marks"])
