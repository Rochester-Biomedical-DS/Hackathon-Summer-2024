import pandas as pd

def get_mapping(df):
    chr_ranges = {}
    current_feature = None
    start_index = 0

    for index, row in peaks.iterrows():
        if current_feature != row['chromosome']:
            if current_feature is not None:
                chr_ranges[current_feature] = (start_index, index - 1)
            current_feature = row['chromosome']
            start_index = index

    if current_feature is not None:
        chr_ranges[current_feature] = (start_index, peaks.index[-1])

    return chr_ranges

# change the df path when needed
df = pd.read_csv("data/Tab_delimited_text/Hackathon2024.Training.Set.Peak2Gene.Pairs.txt", sep='\t') 
genes = pd.read_csv("code/preprocessing/gene_cluster_expression_matrix.csv") 
peaks = pd.read_csv('code/preprocessing/ATAC_features.csv', index_col=0, sep=',') 

gene_features = [col for col in genes.columns if col != 'gene']
peak_features = [col for col in peaks.columns if col != 'peak']

map_genes = genes.set_index('gene')[gene_features].to_dict('index')
map_peaks = peaks.set_index('peak')[peak_features].to_dict('index')

def get_genes_features(x):
    return pd.Series(map_genes.get(x, [None]*len(gene_features)))

def get_peaks_features(x):
    return pd.Series(map_peaks.get(x, [None]*len(peak_features)))

df[gene_features] = df['gene'].apply(get_genes_features)
df[peak_features] = df['peak'].apply(get_peaks_features)
start_cols = ['gene', 'peak']
end_cols = ['Peak2Gene'] if 'Peak2Gene' in df.columns else []
cols = start_cols + gene_features + peak_features + end_cols
df = df[cols]

df.to_csv("data/extended_training_data.csv", index=False)
print(df.head())




