# Hackathon-Summer-2024 GO MJCG Lab!
Best team in the 2024 Hackathon❤️
## Announcements
The time zone will be assumed to be Eastern time.

## Meeting Plans
The next meeting will be on **08/15/24 10 P.M. (eastern time)**
## Meeting Summary
### 8/15(Morning)
* **Matthew Correlation Coefficient**

It takes two arrays and returns a number. The goal as of right now is to get the ATAC and RNA data that appear in the training dataset. **Thank you Mai for writing the MCC method!**

* **A Better Way to Export Data?**

When using Google Colab, Pandas only shows the first 38,618 rows of data, which hinders me from exporting data using coding. **We need to find a way to export data using code.**
Ideally, we can use PD's concat method to merge the rows.
### 8/14
* **How to use ATAC and RNA data**

In both files, each column represents a cell. If the chromosome peak and gene have a strong correlation in the data (for example, when the chromosome peak has a high value in some cells and the gene also has a high value in these cells), then we can conclude that the chromosome peak correlates with the gene.
### 8/13
* **Different Approach?**

Is there another way to figure out this problem? "Translating gene into peak" might not be the best solution.
* **Utilizing the Files**

The other three files (ATAC, RNA, and Meta) are there for a reason.

* **Setwd**

Need to figure out how to run the shell file correctly.
### 8/12
* **Understanding what peak represents**

Example: chr1-89196985-89201657 (chromosome location-peak start unit-peak end unit)
* **Understanding what makes the peak correlate with the gene**

The crucial part of the gene should fall into the peak to make the peak and the gene correlate.
## Tasks
Extract the 300 rows of ATAC data that appear in the training data by 8/16 at 10 A.M. If we cannot come up with an easier way, here is the brute force assignment:
* Ciarrah: 1-100
* Gary: 101-200
* Jeana: 201-300


# University of Rochester Biomedical Data Science Hackathon Summer 2024
Welcome to the landing page for the hackathon. The data are now released. All important information will appear here. Please make sure each individual competing on your team is fully registered. To compete for a prize, you must supply your University of Rochester e-mail address. All teams scoring better than random will receive a participation prize. 1st and 2nd place winning teams in each division will get a cash prize (see below).

Registration of new teams is now closed.  Teams can consist of up to 4 people and you made add members through 8/13. **All team members must submit their own registration form to compete for prizes.** To finish your team registration or to register for an existing team, use this [google form](https://forms.gle/xVYZeegK4hSVtm3F8). 


# Logistics

0.   Each team must have a github handle associated with it in order to participate.  Make sure you edit your registration or email the organizers to provide this, if you haven't yet. Your team will not be scored if you do not provide a handle.
1.   You may add team members up
to noon EDT on 8/13 by editing your response to the google form or emailing the organizers.
2.  Teams of entirely undergraduates will be in the undergraduate
division, else they will be in the open division.
3.  Predictions on test data set are submitted by pushing to
    github.  A repository with the name `Hackathon-Summer-2024`,
    owned by the team captain, will
    be queried for a file named [prediction/prediction.csv](prediction/prediction.csv). Your predictions should be formatted in the exact same way and in the same order as the sample prediction file. Just replace the example TRUE/FALSE predictions with your own.  **If the team captain forks this
    repository and writes predictions there everything should work
    (as long as the predictions are formatted correctly).** 
2.  Predictions will be scored at least once daily, starting 8/13, with
    scores posted by 3 PM.  At
    the organizers' option, predictions may be scored more frequently
    than this.
2.  General questions/problems can be directed to [issues](https://github.com/Rochester-Biomedical-DS/Hackathon-Summer-2024/issues) page.  We encourage other hackathon participants to respond to issues.
3.  The scoreboard will be located
    [here](Leaderboard.Hackathon.2024.md).
   
    We  cannot provide support
    beyond the diagnostic output included on the scoreboard if an error is
    encountered in scoring your predictions.
5.  Interim scoring may employ forms of randomization (e.g. bootstrapping) from the test data set.  The final scores will use all the data and not be randomized.
4.  Competition runs through 2:59 PM EDT 17-August-2024.  The predictions each team has committed to their repository at that time will be used to determine their final score. Captains must submit their own predictions. Any use of predictions from other teams is disqualifying. Winning teams must submit their code to organizers to claim their prize.

# Challenge overview
- Single-cell multiome (RNA + ATAC) sequencing is a recently developed technology platform that simultaneously profiles gene expression and chromatin accessibility from the same cell. Single-cell multiome can transform your understanding of biology, for example, estimating the association between enhancer and gene expression using single-cell multiome data. However, such multiome data have an overabundance of zeros due to dropout events where the mRNA or chromatin accessibility is undetected in a cell. Thus, typical correlation methods (like Pearson correlation and Spearman's rank correlation) showed a low power in estimating the associations between regulatory elements and gene expression. For an overview of zero inflation in single-cell data, see Jiang et al. (2022, [PMID: 35063006](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-022-02601-5)). Accurate detection of associations between regulatory elements and gene expression remains a significant challenge, and no single method outperforms all others.

- The goal of this hackathon is to develop your model to identify associations between chromatin accessibility and gene expression using single-cell multiome data. Chromatin accessibility (ATAC in this hackathon) represents a functional canalization of the epigenome by defining a repertoire of putative regulatory regions (peaks in this hackathon) across the genome, further shaping gene expression programs (RNA in this hackathon). For an overview of the relationship between Chromatin accessibility and gene regulation, see Klemm et al. (2019, [PMID: 30675018](https://www.nature.com/articles/s41576-018-0089-8)).

**Find a complete description of the dataset [here](Data.Description.md) and the data [here](/data).**

# Prizes
   
1.  First place in each division: $300 + $75 x (team size)
2.  Second place in each division: 0 + $50 x (team size)
  

