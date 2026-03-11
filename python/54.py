#combining and spliting arrays

a=[10,20,30]
b=[5,5,5]
print(a+b)

#concatenate

import numpy as np

arr1=np.array([10,20,30,40])
arr2=np.array([5,3,6,5])
print(np.concatenate([arr1,arr2]))
print(np.concatenate([arr1,arr2],axis=0))

arr3=np.array([[10,30],[40,20]])
arr4=np.array([[3,5],[5,2]])
print(np.concatenate([arr3,arr4],axis=1))
print(np.hstack([arr3,arr4]))          #horizontal concatenation
print(np.vstack([arr3,arr4]))          #vertical concatenation


k=np.array([10,20,30,40,50,60])
print(np.array_split(a,3))
