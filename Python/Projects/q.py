# a, b = 12, 5
# if a + b:
#     print("true")
# else:
#     print("false")

# for num in range(10, 14):
#     for i in range(2, num):
#         if num%1 == 1:
#             print(num)
#         break
# d = {"john":43, "peter":50}
# print(d["john"])
# print(len(d))
# print(list(d.keys()))
# def say(msg, times = 1):
#     print(msg*times)
# print(say("hello", 3))

# def f(x=1, y=2):
#     x = x+y
#     y += 1
#     print(x,y)
# f(y=2,x=1)
import numpy as np

# data = pd.read_csv("Datasets\housing.csv")
# print(data.columns)

d={"greg":3,"trump":5}
import pandas as pd
df = pd.DataFrame.from_dict(d)
print(df)
# n = np.array([[1,2,3,4,5,8],[1,2,3,4,5,6]])
# print(n.size)
# print(n.ndim)
# a = np.zeros(6)
# b = np.arange(0,10,2)
# c = a+b
# print(c[4])


