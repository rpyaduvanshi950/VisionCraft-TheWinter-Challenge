import pandas as pd
df=pd.read_csv(r"C:\Users\Arisht\Desktop\Descon Winter Project\Week 1\superheated_vapor_properties.csv")
print (df.shape)
print (df.columns)
a=df.isnull().sum()
print (a.index[a==a.max()])
V_data=df[df["Property"]=="V"]
H_data=df[df["Property"]=="H"]
S_data=df[df["Property"]=="S"]
U_data=df[df["Property"]=="U"]
print (H_data["Liq_Sat"].mean())
df=df.astype(str)
df["Property and Pressure"]=df["Property"] + " at " + df["Pressure"]