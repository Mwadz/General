import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
import pandas as pd
scores = pd.read_csv("Datasets\exam_test_scores.csv")
model = LinearRegression
scores.columns()
