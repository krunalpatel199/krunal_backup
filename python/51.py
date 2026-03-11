#creation, indexing and slicing of numpy array

#creation

import numpy as np

arr=np.array([10,20,30,40])
print(arr)
print(type(arr))

arr1=np.array([[10,20,30],[40,50,60]])
print(arr1)


#slicing

print(arr[0:3])
print(arr[:3])
print(arr[2:])


print(arr1[0:2,0:2])
print(arr1[0,1:3])
print(arr1[1,1:3])

print(np.shape(arr1))
print(np.size(arr1))
print(np.ndim(arr1))      #dimension
print(arr.dtype)

