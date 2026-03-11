#creation of modules

import demo01

a=demo01.add(2,3)
print(a)


import demo01 as d

b=d.add(4,5)
print(b)

c=d.employee["name"]
print(c)
