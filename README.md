WearableComputingData
=====================

R analysis of wearable computing data, for Coursera "Getting and Cleaning Data" course assignment.
The analysis uses data collected from the accelerometers from the Samsung Galaxy S smartphone, obtained from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

For details of the analysis performed and variables in the output, please refer to *CodeBook.md*.

# Usage instructions
The analysis can be ran in R as follows:

```R
source("run_analysis.R")
```

The reshape2 library is required. This can be installed with:

```R
install.packages("reshape2")
```
The analysis assumes the data has been unzipped in the *UCI HAR Dataset* directory, but will attempt to download and unzip the data if this directory does not exist.
