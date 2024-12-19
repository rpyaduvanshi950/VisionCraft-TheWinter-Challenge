import numpy as np
x=np.array([
    [9,2,5,0,0],
    [7,5,0,0,0]
])
def sigmoidfn(a):
    b=1/(1+np.exp(-a))
    return b
def derivative(a):
    b=sigmoidfn(a)-(sigmoidfn(a))**2
    return b
print (f"x on applying sigmoid fn is: {sigmoidfn(x)}")
print (f"x on applying derivative fn is: {derivative(x)}")