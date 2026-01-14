import pandas as pd
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt

# Load data - attempting to read from processed data or previous output
try:
    df = pd.read_csv('../data/processed/ratings.csv')
except FileNotFoundError:
    print("Warning: '../data/processed/ratings.csv' not found. Creating dummy data for testing.")
    data = {'rating': [1, 2, 5, 4, 5, 1, 2, 3, 4, 5, 1, 2, 5, 4]}
    df = pd.DataFrame(data)

kmeans = KMeans(n_clusters=3, random_state=42)
df['cluster'] = kmeans.fit_predict(df[['rating']])

plt.hist(df['rating'], bins=5)
plt.title("Customer Rating Distribution")
plt.xlabel("Rating")
plt.ylabel("Frequency")
plt.show() # checking if this works in non-interactive
print("Clustering complete. Histogram displayed.")