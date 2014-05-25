library(reshape2)

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filePath <- "HAR_data.zip"
#download.file(url, destfile=filePath, method="curl")
#dateDownloaded <- date()

unzip(filePath)

feature_names_tbl <- read.table("UCI HAR Dataset/features.txt")
feature_names <- feature_names_tbl[,2]

# Load the training data set
data_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names=feature_names)

# Add subject from subject_train.txt
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(subject_train) <- c("subject")
data_train <- cbind(subject_train, data_train)

# Add the activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
labels_train_tmp <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names=c("activity"))
labels_train <- factor(labels_train_tmp$activity, labels=activity_labels[,2])
data_train <- cbind(labels_train, data_train)
names(data_train)[1] <- "activity"


# Load the testing data set
data_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names=feature_names)

# Add subject from subject_test.txt
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- c("subject")
data_test <- cbind(subject_test, data_test)

# Add the activity labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
labels_test_tmp <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names=c("activity"))
labels_test <- factor(labels_test_tmp$activity, labels=activity_labels[,2])
data_test <- cbind(labels_test, data_test)
names(data_test)[1] <- "activity"

# Merge training and test data
data <- rbind(data_test, data_train)

# Only want columns containing means and standard deviations
sel_cols <- c( 1, 2, grep("mean", names(data)), grep("std", names(data)), grep("Mean", names(data)) )
data <- data[,sel_cols]

# Sort out variable names

# Remove dots (arise when improting (, ), - etc)
names(data) <- gsub("\\.","",names(data))
names(data) <- gsub("mean","Mean",names(data))
names(data) <- gsub("std","Std",names(data))

# "Melt" data by subject and activity
mdata <- melt(data, id=c("subject", "activity"))
# Get the means for each subject+activity pair
means <- dcast(mdata, subject+activity~variable, mean)

# Write output
write.csv(means, "tidy_means.csv")
