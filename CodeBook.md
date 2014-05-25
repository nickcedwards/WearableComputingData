Wearable Computing Data Codebook
================================

This analysis uses data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. A full description of the data can be found at that site.

# Analysis performed

The analysis performed by the run_analysis.R script is as follows:

1. Load the "test" and "train" datasets from the "UCI HAR Dataset".
2. Apply descriptive names the columns. The names are defived from the names in the original dataset, but renamed to comply with R standards (i.e. remove paranthesis and hypens). Mixed capitalisation (camelCase) was used for the names, as this is more readable than having all lower case names.
3. Add columns for the activity and subject for each row. Descriptive names are used for the activtity.
4. Merge the training and test datasets
5. Only select columns pertaining to the mean and average of each measurement. This is stored as a data.frame with name _data_.
6. Create a new dataset giving the mean for each subject and activity. This is stored as a data.frame with name _mean_.
7. Store the _mean_ data as csv in file _tidy_means.csv_.


# List of variables
