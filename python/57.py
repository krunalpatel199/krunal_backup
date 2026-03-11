#aggregating function in arrays

import numpy as np

arr=np.array([20,40,60,70])
print(arr)
print(np.sum(arr))
print(np.min(arr))
print(np.max(arr))
print(np.size(arr))
print(np.mean(arr))
print(np.cumsum(arr))
print(np.cumprod(arr))


a=[120,130,100,140,160,170]
b=[10,20,30,40,50,60]

price=np.array(a)
quantity=np.array(b)

print(price,"\n",quantity)

c=np.cumprod([price,quantity], axis=0)
print(c)
print(c[1].sum())

