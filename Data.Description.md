
# **GIDS Biomedical Data Science Hackathon 2024:** 
## _Predicting associations between chromatin accessibility and gene expression with single-cell multiome data_ 

**Overview**

- Single-cell multiome (RNA + ATAC) sequencing is a recently developed technology platform that simultaneously profiles gene expression and chromatin accessibility from the same cell. Single-cell multiome can transform your understanding of biology, for example, estimating the association between enhancer and gene expression using single-cell multiome data. However, such multiome data have an overabundance of zeros due to dropout events where the mRNA or chromatin accessibility is undetected in a cell. Thus, typical correlation methods (like Pearson correlation and Spearman's rank correlation) showed a low power in estimating the associations between regulatory elements and gene expression. For an overview of zero inflation in single-cell data, see Jiang et al. (2022, [PMID: 35063006](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-022-02601-5)). Accurate detection of associations between regulatory elements and gene expression remains a significant challenge, and no single method outperforms all others.

- The goal of this hackathon is to develop your model to identify associations between chromatin accessibility and gene expression using single-cell multiome data. Chromatin accessibility (ATAC in this hackathon) represents a functional canalization of the epigenome by defining a repertoire of putative regulatory regions (peaks in this hackathon) across the genome, further shaping gene expression programs (RNA in this hackathon). For an overview of the relationship between Chromatin accessibility and gene regulation, see Klemm et al. (2019, [PMID: 30675018](https://www.nature.com/articles/s41576-018-0089-8)).


**Data**

The data for this hackathon comes from single-cell multiome data in the human peripheral blood mononuclear cells (PBMCs). Raw data is available at [10X Genomics](https://www.10xgenomics.com/datasets). Data processing details are available [here](https://stuartlab.org/signac/articles/pbmc_multiomic). 

- In this hackathon, only 2,999 CD14+ monocyte cells, the largest population in this multiome data, are used to decrease the data size and complexity. The entire data set is represented by 2,999 UMIs, 36,601 genes, and 108,344 peaks. RNA data shows the expression of 36,601 genes (rows) in 2,999 cells (columns). ATAC data shows the chromatin accessibility of 108,344 peaks (rows) in 2,999 cells (columns).

- The features of these monocyte cells are given in the metadata (Meta). Each row represents a cell, with names in the same order of columns of the RNA and ATAC.

- The training data provides 150 TRUE peak-to-gene associations and 150 FALSE peak-to-gene associations. 

- The testing data provides 300 TRUE/FALSE-undetermined peak-to-gene associations, which are the prediction targets for this challenge.

- These data are provided in two formats: [RData](data/Hackathon2024.RData) and [Tab-delimited text](data/Tab_delimited_text.zip). The file [Code.to.Check.Data.sh](data/Code.to.Check.Data.sh) provides the code to check data in R or the terminal.


**Hackathon objective and evaluation**

The hackathon's objective is to correctly predict whether the 300 peak-to-gene associations testing data are TRUE or FALSE. Predictions will be scored using Matthews' correlation coefficient (MCC).

**Submission**

Predictions should be posted to your GitHub account as plain text with four comma-delimited columns in the same order listed in `Hackathon2024.Testing.Set.Peak2Gene.Pairs.txt`. 

- The rows are the peak-to-gene pairs, in the same order listed in `Hackathon2024.Testing.Set.Peak2Gene.Pairs.txt`. 

- The fourth column contains a prediction of whether the association of peak accessibility and gene expression in each row is a TRUE or FALSE. 

- An example prediction file is in: [prediction/prediction.csv](prediction/prediction.csv). You should replace this file with your own predictions. **If you change the name or format of the file, it will not be scored.**

**Scoring**

- Text files associated with hackathon-registered Github accounts for team captains will be assessed each day of the competition. To submit predictions, please make sure that your properly formatted [prediction.csv](prediction/prediction.csv) file is in your forked repository of `/Hackathon-Summer-2024/main/prediction/prediction.csv.` Captains must submit their own predictions. Any use of predictions from other teams is disqualifying.  

- Prediction files will be pulled at 3 PM, and MCC results will be posted shortly afterward.


**Prizes**
- The competition runs through 2:59 PM EDT 17-August-2024.  The predictions each team has committed to their repository at that time will be used to determine their final score. Winning teams must submit their code to organizers to claim their prize. 

- Prizes
1.  First place in each division: $300 + $75 x (team size)
2.  Second place in each division: 0 + $50 x (team size)

