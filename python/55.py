#adding and removing elements in the arrays

import numpy as np

a=np.array([10,20,30,40])

#append
print(np.append(a,50))

b=np.array([[10,20],[40,50]])
print(np.append(b,60))
print(np.append(b,[60,70]))


#insert
print(np.insert(a,1,70))   #array,index,value
print(np.insert(b,1,[50,60],axis=0))
print(np.insert(b,1,[50,60],axis=1))


#delete
print(np.delete(a,1))
print(np.delete(b,1,axis=0))
