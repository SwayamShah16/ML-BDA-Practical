import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

data = pd.read_csv("house_price.csv")
data.columns = data.columns.str.strip()

X = data[['Area']]
y = data['Price']

model = LinearRegression()
model.fit(X,y)
prediction = model.predict(X)

plt.figure(figsize=(10,6))
plt.scatter(X,y,color='blue',label='Actual Data')
plt.plot(X, prediction, color='red', linewidth=2, label='Regression Line')

plt.title('House Price Pridiction')
plt.xlabel('Area(sq.ft)')
plt.ylabel('Price($)')
plt.legend()
plt.grid(True)
plt.show()