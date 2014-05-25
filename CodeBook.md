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

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* "subject" - Subject ID
* "activity" - Activity name
* "tBodyAccMeanX" - Mean body acceleration in X direction
* "tBodyAccMeanY" - Mean body acceleration in Y direction
* "tBodyAccMeanZ" - Mean body acceleration in Z direction
* "tGravityAccMeanX" - Mean gravitational acceleration in X direction
* "tGravityAccMeanY" - Mean gravitational acceleration in Y direction                  
* "tGravityAccMeanZ" - Mean gravitational acceleration in Z direction
* "tBodyAccJerkMeanX" - Mean acceleration jerk signal in X direction               
* "tBodyAccJerkMeanY" - Mean acceleration jerk signal in Y direction
* "tBodyAccJerkMeanZ" - Mean acceleration jerk signal in Y direction
* "fBodyAccMeanX" - Mean raw accelerometer signal in X direction
* "fBodyAccMeanY" - Mean raw accelerometer signal in Y direction
* "fBodyAccMeanZ" - Mean raw accelerometer signal in Z direction
* "tBodyGyroMeanX" - Mean raw body gyroscope signal in X direction
* "tBodyGyroMeanY" - Mean raw body gyroscope signal in Y direction
* "tBodyGyroMeanZ" - Mean raw body gyroscope signal in Z direction
* "tBodyGyroJerkMeanX" - Mean body gryosccopic jerk signal in X direction               
* "tBodyGyroJerkMeanY" - Mean body gryosccopic jerk signal in Y direction
* "tBodyGyroJerkMeanZ" - Mean body gryosccopic jerk signal in Y direction
* "tBodyAccMagMean" - Mean magnitude of the body acceleration vector
* "tGravityAccMagMean" - Mean magnitude of the gravitational acceleration vector
* "tBodyAccJerkMagMean" - Mean magnitude of the acceleration jerk vector
* "tBodyGyroMagMean" - Mean magnitude of the gryoscopic vector
* "tBodyGyroJerkMagMean" - Mean magnitude of the gryoscopic jerk vector
* "fBodyAccMeanFreqX" - Mean of frequency components of FFT of body acceleration in X direction
* "fBodyAccMeanFreqY" - Mean of frequency components of FFT of body acceleration in Y direction
* "fBodyAccMeanFreqZ" - Mean of frequency components of FFT of body acceleration in Z direction
* "fBodyAccJerkMeanX" - Mean FFT of body jerk signal in X direction
* "fBodyAccJerkMeanY" - Mean FFT of body jerk signal in Y direction
* "fBodyAccJerkMeanZ" - Mean FFT of body jerk signal in Z direction
* "fBodyAccJerkMeanFreqX" - Mean of frequency components of FFT of body jerk signal in X direction
* "fBodyAccJerkMeanFreqY" - Mean of frequency components of FFT of body jerk signal in Y direction
* "fBodyAccJerkMeanFreqZ" - Mean of frequency components of FFT of body jerk signal in Z direction
* "fBodyGyroMeanX"  - Mean FFT of gyroscope signal in X direction            
* "fBodyGyroMeanY"  - Mean FFT of gyroscope signal in Y direction
* "fBodyGyroMeanZ"  - Mean FFT of gyroscope signal in Z direction
* "fBodyGyroMeanFreqX"  - Mean of frequency components of FFT of gyroscope signal in X direction            
* "fBodyGyroMeanFreqY"  - Mean of frequency components of FFT of gyroscope signal in Y direction
* "fBodyGyroMeanFreqZ"  - Mean of frequency components of FFT of gyroscope signal in Z direction
* "fBodyAccMagMean" - Mean magnifture of FFT of body acceleration vector
* "fBodyAccMagMeanFreq"- Mean of frequency components of magnifture of FFT of body acceleration vector
* "fBodyBodyAccJerkMagMean"           
* "fBodyBodyAccJerkMagMeanFreq"
* "fBodyBodyGyroMagMean"              
* "fBodyBodyGyroMagMeanFreq"
* "fBodyBodyGyroJerkMagMean"          
* "fBodyBodyGyroJerkMagMeanFreq"
* "tBodyAccStdX" - Standard deviation of body acceleration in X direction
* "tBodyAccStdY" - Standard deviation of body acceleration in Y direction
* "tBodyAccStdZ" - Standard deviation of body acceleration in Z direction                    
* "tGravityAccStdX" - Standard deviation of gravitational acceleration in X direction
* "tGravityAccStdY" - Standard deviation of gravitational acceleration in Y direction 
* "tGravityAccStdZ" - Standard deviation of gravitational acceleration in Z direction                    
* "tBodyAccJerkStdX"  - Standard deviation of body acceleration jerk signal in X direction 
* "tBodyAccJerkStdY"  - Standard deviation of body acceleration jerk signal in Y direction
* "tBodyAccJerkStdZ"  - Standard deviation of body acceleration jerk signal in Z direction   
* "tBodyGyroStdX" - Standard deviation of body gryoscopic signal in X direction
* "tBodyGyroStdY" - Standard deviation of body gryoscopic signal direction
* "tBodyGyroStdZ" - Standard deviation of body gryoscopic signal direction
* "tBodyGyroJerkStdX"  - Standard deviation of body gyroscopic jerk signal in X direction 
* "tBodyGyroJerkStdY"  - Standard deviation of body gyroscopic jerk signal in Y direction
* "tBodyGyroJerkStdZ"  - Standard deviation of body gyroscopic jerk signal in Z direction 
* "tBodyAccMagStd"
* "tGravityAccMagStd"                 
* "tBodyAccJerkMagStd"
* "tBodyGyroMagStd"                   
* "tBodyGyroJerkMagStd"
* "fBodyAccStdX"  - Standard deviation of FFT of raw acceleratometer signal in X direction 
* "fBodyAccStdY"  - Standard deviation of FFT of raw acceleratometer signal in Y direction
* "fBodyAccStdZ"  - Standard deviation of FFT of raw acceleratometer signal in Z direction 
* "fBodyAccJerkStdX" - Standard deviation of FFT of body acceleration jerk signal in X direction
* "fBodyAccJerkStdY" - Standard deviation of FFT of body acceleration jerk signal in Y direction 
* "fBodyAccJerkStdZ" - Standard deviation of FFT of body acceleration jerk signal in Z direction
* "fBodyGyroStdX"  - Standard deviation of FFT of body gyroscopic signal in X direction   
* "fBodyGyroStdY"  - Standard deviation of FFT of body gyroscopic signal in Y direction
* "fBodyGyroStdZ"  - Standard deviation of FFT of body gyroscopic signal in Z direction   
* "fBodyAccMagStd"
* "fBodyBodyAccJerkMagStd"            
* "fBodyBodyGyroMagStd"
* "fBodyBodyGyroJerkMagStd"           
* "angletBodyAccMeangravity"
* "angletBodyAccJerkMeangravityMean"  
* "angletBodyGyroMeangravityMean"
* "angletBodyGyroJerkMeangravityMean" 
* "angleXgravityMean"
* "angleYgravityMean"                 
* "angleZgravityMean
