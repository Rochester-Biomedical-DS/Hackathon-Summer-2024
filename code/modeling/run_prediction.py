import numpy as np
import pandas as pd
from sklearn.preprocessing import LabelEncoder
from sklearn.preprocessing import StandardScaler
import tensorflow as tf

pred = pd.read_csv('code/modeling/extended_test_data.csv').drop(columns=['Peak2Gene'])

df = pred.drop(columns=['gene', 'peak', 'start','end','sum','mean','variance'])

le = LabelEncoder()
df['chr'] = le.fit_transform(df['chromosome'])
df['peak_cluster'] = le.fit_transform(df['gmm_bin'])
df = df.drop(columns=['chromosome','gmm_bin'])

scaler = StandardScaler()
X_scaled = scaler.fit_transform(df)

loaded_model = tf.keras.models.load_model('code/modeling/NN_model.h5')

y_pred = loaded_model.predict(X_scaled)
df['Peak2Gene'] = (y_pred > 0.5).astype(int)
print(df['Peak2Gene'])

original_pred = pd.read_csv('prediction/prediction.csv').drop(columns=['Peak2Gene'])
original_pred['Peak2Gene'] = df['Peak2Gene'].apply(lambda x:'True' if x == 1 else 'False')

original_pred.to_csv('prediction/our_prediction.csv')






