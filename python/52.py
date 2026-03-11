#inspecting an array

import numpy as np

a=[[10,20,30],[40,50,60]]
arr=np.array(a)

print(arr)
print(arr.shape)     #rows and colums
print(len(arr))       #mumber of nested values
print(np.size(arr))    #number of elements
print(type(arr))       #datatype of variables
print(arr.dtype)       #datatype of array
print(np.ndim(arr))       
print(arr.astype(float))      #conversion of datatypes
