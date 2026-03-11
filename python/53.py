#mathematical operations and functions on arrays

import numpy as np

arr1=np.array([10,20,30,40])
arr2=np.array([40,50,60,30])
arr3=np.array([[12,24],[50,45]])
arr4=np.array([[43,56],[32,12]])
arr5=np.array([2])

#addition
print(arr1+arr2)
print(np.add(arr1,arr2))

print(arr3+arr4)
print(np.add(arr3,arr4))


#substraction
print(arr1-arr2)
print(np.subtract(arr1,arr2))

print(arr3-arr4)
print(np.subtract(arr3,arr4))


#multiply
print(arr1*arr2)
print(np.multiply(arr1,arr2))

print(arr3*arr4)
print(np.multiply(arr3,arr4))


#divide
print(arr1/arr2)
print(np.divide(arr1,arr2))

print(arr3/arr4)
print(np.divide(arr3,arr4))


#power
print(np.pow(arr1,arr5))

#square root
print(np.sqrt(arr1))
