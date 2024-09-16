from sentence_transformers import SentenceTransformer
import numpy as np
import pandas as pd
from database import fetch_data

def read_query_from_file(file_path):
    with open(file_path, 'r') as file:
        query = file.read()
    return query

# Load a pre-trained sentence transformer model
model = SentenceTransformer('all-MiniLM-L6-v2')

apps_query_path = './queries/apps.sql'

# Load latest applications for GG21
query = read_query_from_file(apps_query_path)

# Fetch data using the query
try:
    apps_df = fetch_data(query)
except Exception as e:
    st.error(f"Error fetching data: {e}",icon="🚨")   

# Generate embeddings for past project descriptions
app_embeddings = model.encode(apps_df['description'].tolist())

# Save the embeddings for future use
np.save('./data/embeddings.npy', app_embeddings)
apps_df.to_csv('./data/apps.csv',index=False)