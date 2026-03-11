#search, sort and filter arrays

#1.sort
import numpy as np
arr=np.array([7,4,5,3,1])
print(np.sort(arr))

arr1=np.array([[4,5,3,2,7],[4,3,5,8,9]])
print(np.sort(arr1))


#2.search
arr2=np.array([5,7,8,4,2])
s=np.where(arr2==7)
print(s)

s1=np.where(arr2%2==0)
print(s1)


#3.searchsorted    (in which array has to be sorted)
arr3=np.array([1,3,4,6,7])
ss=np.searchsorted(arr3,3)
print(ss)


#4.filter
arr4=np.array([20,40,60,70])
fa=[True,False,True,False]
new=arr4[fa]
print(new)

fa1=arr4>35
new1=arr4[fa1]
print(new1)