import pandas as pd
import numpy as np
from matplotlib import pyplot as pl
A=np.array([
    [1,2,3],
    [4,5,6],
    [7,8,9],
    [10,11,12]
    ])
B=np.array([
    [13,14,15],
    [16,17,18],
    [19,20,21]
    ])
def isValid(a,b):
    if (a.shape[1] == b.shape[0]):
        return True
    else:
        return False
def matrix_multipy_2(a,b):
    result=np.matmul(a,b)
    return result
def matrix_multiply(a,b):
    result=np.zeros((a.shape[0],b.shape[1]),dtype=int)
    for i in range(0,a.shape[0]):
        for j in range(0,b.shape[1]):
            for k in range(0,a.shape[1]):
                result[i,j]+=a[i,k]*b[k,j]
    return result
if isValid(A,B):
    print (f"Result using loops:\n{matrix_multiply(A,B)}")
    print (f"Result using numpy:\n{matrix_multipy_2(A,B)}")
else:
    print (f"Matrix multiplication is not valid")