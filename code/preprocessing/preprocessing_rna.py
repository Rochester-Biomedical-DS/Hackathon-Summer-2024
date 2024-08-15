import pandas as pd
import scanpy as sc
import numpy as np

df = pd.read_csv('data/Tab_delimited_text/Hackathon2024.RNA.txt', index_col=0, sep='\t')
genes = sc.AnnData(df.T)
print(genes.n_obs, genes.n_vars) 

sc.pp.normalize_total(genes, target_sum=1e6)
sc.pp.log1p(genes)
sc.pp.scale(genes, max_value=30)

sc.tl.pca(genes, svd_solver='arpack')
sc.pp.neighbors(genes, n_neighbors=15, n_pcs=30)
sc.tl.umap(genes)
sc.tl.louvain(genes,resolution=0.6)

sc.pl.umap(genes, color=['louvain'])
genes.write('processed_data.h5ad')
sc.pl.umap(genes, color='louvain', save='umap_clusters.png')


sc.tl.rank_genes_groups(genes, groupby='louvain', method='t-test', n_genes=genes.n_vars)

clusters = genes.uns['rank_genes_groups']
groups = clusters['names'].dtype.names


gene_cluster_matrix = pd.DataFrame(index=genes.var_names)

gene_cluster_matrix = pd.DataFrame(index=genes.var_names)
for group in genes.obs['louvain'].cat.categories:
    group_mask = genes.obs['louvain'] == group
    group_mean_expression = np.mean(genes[group_mask].X, axis=0)
    gene_cluster_matrix[group] = group_mean_expression

gene_cluster_matrix = pd.DataFrame(gene_cluster_matrix, columns=genes.obs['louvain'].cat.categories, index=genes.var_names)
gene_cluster_matrix.fillna(0, inplace=True)


print(gene_cluster_matrix.head())
gene_cluster_matrix.to_csv('gene_cluster_expression_matrix.csv') 