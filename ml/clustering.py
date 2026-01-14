import pandas as pd
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt

df = pd.read_csv('../data/processed/ratings.csv')
kmeans = KMeans(n_clusters=3, random_state=42)
df['cluster'] = kmeans.fit_predict(df[['rating']])

plt.hist(df['rating'], bins=5)
plt.title("Customer Rating Distribution")
plt.show()