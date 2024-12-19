import numpy as np
x=[4,7,7,15,32,47,63,89,102,131]
def mean(a):
    m=0
    for i in range(0,len(a)):
        m+=a[i]
    return m/len(a)
def standard_deviation(a):
    s=0
    for i in range(0,len(a)):
        s+=(a[i]-mean(a))**2
    std=(s/len(a))**0.5
    return std
def zscore_normalisation(a):
    b=np.zeros((len(a)))
    for i in range(0,len(a)):
        b[i]=(a[i]-mean(a))/standard_deviation(a)
    return b
def zscore_normalisation_2(a):
    b=np.zeros((len(a)))
    m=np.mean(a)
    s=np.std(a)
    for i in range(0,len(a)):
        b[i]=(a[i]-m)/s
    return b
print (f"Result without using numpy: {zscore_normalisation(x)}")
print (f"Result using numpy: {zscore_normalisation_2(x)}")