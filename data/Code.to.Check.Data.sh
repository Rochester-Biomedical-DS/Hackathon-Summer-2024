###########################################################################
#####     Code for data checking Hackathon 2024                       #####
#####     2024.08.01                                                  #####
###########################################################################
##### Welcome to the 2024 UR biomedical data science hackathon
##### The code for data checking in both R and terminal



###########################################################################
######### Check data using R
###########################################################################
setwd("./Hackathon2024")
load("Hackathon2024.RData")
ls()
# [1] "Hackathon2024.ATAC"                         "Hackathon2024.Meta"                         "Hackathon2024.RNA"                         
# [4] "Hackathon2024.Testing.Set.Peak2Gene.Pairs"  "Hackathon2024.Training.Set.Peak2Gene.Pairs"

### Check data
dim(Hackathon2024.Meta)                             # [1] 2999    3
dim(Hackathon2024.RNA)                              # [1] 36601  2999
dim(Hackathon2024.ATAC)                             # [1] 108344   2999
dim(Hackathon2024.Testing.Set.Peak2Gene.Pairs)      # [1] 300   4
dim(Hackathon2024.Training.Set.Peak2Gene.Pairs)     # [1] 300   4

### Check top rows
head(Hackathon2024.Meta)
#                    nCount_RNA nCount_ATAC  CellType
# AAACCAACACAATGCC-1       5849       16550 CD14 Mono
# AAACCAACAGGAACTG-1       5901       25593 CD14 Mono
# AAACCAACATAATCCG-1       7975       42743 CD14 Mono
# AAACCAACATTGTGCA-1       5525       21760 CD14 Mono
# AAACCGCGTACTTCAC-1      10327       76652 CD14 Mono
# AAACCGGCATAATCAC-1       7237       28341 CD14 Mono

head(Hackathon2024.RNA[,1:5])
# 6 x 5 sparse Matrix of class "dgCMatrix"
#             AAACCAACACAATGCC-1 AAACCAACAGGAACTG-1 AAACCAACATAATCCG-1 AAACCAACATTGTGCA-1 AAACCGCGTACTTCAC-1
# MIR1302-2HG                  .                  .                  .                  .                  .
# FAM138A                      .                  .                  .                  .                  .
# OR4F5                        .                  .                  .                  .                  .
# AL627309.1                   .                  .                  .                  .                  .
# AL627309.3                   .                  .                  .                  .                  .
# AL627309.2                   .                  .                  .                  .                  .

head(Hackathon2024.ATAC[,1:5])
# 6 x 5 sparse Matrix of class "dgCMatrix"
#                    AAACCAACACAATGCC-1 AAACCAACAGGAACTG-1 AAACCAACATAATCCG-1 AAACCAACATTGTGCA-1 AAACCGCGTACTTCAC-1
# chr1-10109-10357                    .                  .                  .                  .                  .
# chr1-180730-181630                  .                  .                  .                  .                  .
# chr1-191491-191736                  .                  .                  .                  .                  .
# chr1-267816-268196                  .                  2                  .                  .                  .
# chr1-586028-586373                  .                  .                  .                  .                  .
# chr1-629721-630172                  2                  .                  .                  .                  .

head(Hackathon2024.Training.Set.Peak2Gene.Pairs)
#                       peak     gene                             Pair Peak2Gene
# 1   chr1-89196985-89201657     GBP2      chr1-89196985-89201657_GBP2      TRUE
# 2   chr6-33077557-33083333 HLA-DPA1  chr6-33077557-33083333_HLA-DPA1      TRUE
# 3 chr6-137789753-137792920  TNFAIP3 chr6-137789753-137792920_TNFAIP3      TRUE
# 4 chr1-212604203-212626574     ATF3    chr1-212604203-212626574_ATF3      TRUE
# 5   chr2-96541661-96555628   ARID5A    chr2-96541661-96555628_ARID5A      TRUE
# 6  chr11-60977201-60989782      CD6      chr11-60977201-60989782_CD6      TRUE

head(Hackathon2024.Testing.Set.Peak2Gene.Pairs)
#                     peak   gene                         Pair Peak2Gene
# 1   chr1-1245493-1248050   SDF4    chr1-1245493-1248050_SDF4         ?
# 2   chr1-1330394-1334148 MRPL20  chr1-1330394-1334148_MRPL20         ?
# 3   chr1-2145904-2147150 FAAP20  chr1-2145904-2147150_FAAP20         ?
# 4   chr1-9713011-9736481 PIK3CD  chr1-9713011-9736481_PIK3CD         ?
# 5 chr1-21287896-21301043   ECE1  chr1-21287896-21301043_ECE1         ?
# 6 chr1-23615606-23621287  RPL11 chr1-23615606-23621287_RPL11         ?

#### Enjoy 
cat("Build your own model to estimate the TRUE and FALSE associations in the testing set!\nEnjoy your Hackathon 2024!\n ,---.\n/ o o \\\n\\ \\_/ /\n `---´\n","\n")






###########################################################################
######### Check data using Tab-delimited text in terminal
###########################################################################
cd ./Hackathon2024
### Extract data to a directory
unzip Tab_delimited_text.zip
cd Tab_delimited_text
ls
# Hackathon2024.ATAC.txt.gz				Hackathon2024.Testing.Set.Peak2Gene.Pairs.txt.gz
# Hackathon2024.Meta.txt.gz				Hackathon2024.Training.Set.Peak2Gene.Pairs.txt.gz
# Hackathon2024.RNA.txt.gz

gzcat Hackathon2024.Meta.txt.gz | wc -l
gzcat Hackathon2024.RNA.txt.gz | wc -l
gzcat Hackathon2024.ATAC.txt.gz | wc -l
gzcat Hackathon2024.Training.Set.Peak2Gene.Pairs.txt.gz | wc -l
gzcat Hackathon2024.Testing.Set.Peak2Gene.Pairs.txt.gz | wc -l


gzcat Hackathon2024.Meta.txt.gz | less
# nCount_RNA      nCount_ATAC     CellType
# AAACCAACACAATGCC-1      5849    16550   CD14 Mono
# AAACCAACAGGAACTG-1      5901    25593   CD14 Mono
# AAACCAACATAATCCG-1      7975    42743   CD14 Mono
# AAACCAACATTGTGCA-1      5525    21760   CD14 Mono
# AAACCGCGTACTTCAC-1      10327   76652   CD14 Mono

gzcat Hackathon2024.RNA.txt.gz | cut -f 1-5 | column -t | less  
# gene               AAACCAACACAATGCC.1  AAACCAACAGGAACTG.1  AAACCAACATAATCCG.1  AAACCAACATTGTGCA.1
# MIR1302-2HG        0                   0                   0                   0
# FAM138A            0                   0                   0                   0
# OR4F5              0                   0                   0                   0
# AL627309.1         0                   0                   0                   0
# AL627309.3         0                   0                   0                   0
# AL627309.2         0                   0                   0                   0


gzcat Hackathon2024.ATAC.txt.gz | cut -f 1-5 | column -t | less  
# peak                       AAACCAACACAATGCC.1  AAACCAACAGGAACTG.1  AAACCAACATAATCCG.1  AAACCAACATTGTGCA.1
# chr1-10109-10357           0                   0                   0                   0
# chr1-180730-181630         0                   0                   0                   0
# chr1-191491-191736         0                   0                   0                   0
# chr1-267816-268196         0                   2                   0                   0
# chr1-586028-586373         0                   0                   0                   0
# chr1-629721-630172         2                   0                   0                   0


gzcat Hackathon2024.Training.Set.Peak2Gene.Pairs.txt.gz | column -t | less  
# peak                       gene       Pair                                Peak2Gene
# chr1-89196985-89201657     GBP2       chr1-89196985-89201657_GBP2         TRUE
# chr6-33077557-33083333     HLA-DPA1   chr6-33077557-33083333_HLA-DPA1     TRUE
# chr6-137789753-137792920   TNFAIP3    chr6-137789753-137792920_TNFAIP3    TRUE
# chr1-212604203-212626574   ATF3       chr1-212604203-212626574_ATF3       TRUE
# chr2-96541661-96555628     ARID5A     chr2-96541661-96555628_ARID5A       TRUE
gzcat Hackathon2024.Training.Set.Peak2Gene.Pairs.txt.gz | column -t | tail  
# chr1-151593645-151594727   SNX27      chr1-151593645-151594727_SNX27      FALSE
# chr14-52692182-52692881    PSMC6      chr14-52692182-52692881_PSMC6       FALSE
# chr19-45527935-45529784    FOSB       chr19-45527935-45529784_FOSB        FALSE
# chr17-32352719-32356100    ZNF207     chr17-32352719-32356100_ZNF207      FALSE
# chr5-77629349-77631531     WDR41      chr5-77629349-77631531_WDR41        FALSE


gzcat Hackathon2024.Testing.Set.Peak2Gene.Pairs.txt.gz | column -t | less  
# peak                       gene        Pair                                Peak2Gene
# chr1-1245493-1248050       SDF4        chr1-1245493-1248050_SDF4           ?
# chr1-1330394-1334148       MRPL20      chr1-1330394-1334148_MRPL20         ?
# chr1-2145904-2147150       FAAP20      chr1-2145904-2147150_FAAP20         ?
# chr1-9713011-9736481       PIK3CD      chr1-9713011-9736481_PIK3CD         ?
# chr1-21287896-21301043     ECE1        chr1-21287896-21301043_ECE1         ?


#### Enjoy 
printf 'Build your own model to estimate the TRUE and FALSE associations in the testing set!\nEnjoy your Hackathon 2024!\n ,---.\n/ o o \\\n\ \\_/ /\n `---´\n'






