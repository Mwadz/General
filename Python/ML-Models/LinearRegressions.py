import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
import pandas as pd
import seaborn as sns

data = pd.read_csv("Datasets\housing.csv")
data.dropna(inplace=True)