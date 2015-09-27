Was code book submitted to GitHub that modifies and updates the codebooks available
to you with the data to indicate all the variables and summaries you calculated, along
with units, and any other relevant information?

### Introduction

Data was obtained from the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1] and transformed to create a new data set called "HARavg". 

The Human Activity Recognition Using Smartphones Dataset Version 1.0 (HAR Dataset) consists of data from experiments carried out with a group of 30 volunteers. The volunteers were partitioned into test and train groups. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II); multiple movement measurements were taken of each subject performing each activity.

To create the HARavg data set, the mean and standard deviation variables for each measurement in the "test" and "train" files were extracted from the HAR Dataset, along with subject id and activity labels from associated files. The data were combined and the average was taken of each of the mean and standard deviation variables for each measurement, for each activity, and each subject to create the The HARavg"" data set.

See CodeBook.md for more details about the the Human Activity Recognition Using Smartphones Dataset Version 1.0 and HARavg data set.

### INTRODUCTION

Data was used from the Human Activity Recognition Using Smartphones Dataset Version 1.0. to create a new data set called "HARavg". The HARavg"" dataset is an independent data set that consists of the average of the mean and standard deviations variables extracted from the .... for each activity and each subject.

See CodeBook.md for more information about the the Human Activity Recognition Using Smartphones Dataset Version 1.0 and Haravg data set.

Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.

The Human Activity Recognition Using Smartphones Dataset consists of data from experiments carried out with a group of 30 volunteers. The volunteers were partitioned into test and train groups. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II); multiple movement measurements were taken of each subject performing each activity. 
        - More information about the data set can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
        - The Human Activity Recognition Using Smartphones Dataset Version 1.0.can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The new, independent dataset was created from data that.....by extracting mean and standard deviation measurement variables from the "test" and "train" data made available as part of the Human Activity Recognition Using Smartphones Dataset Version 1.0.note xxx not included?????? variables identifying subject and labeling activities added to average info merged 
new table create that consisted of the average of each variable was then taken for each activity, and each subject. 
Using its embedded accelerometer and gyroscope

### ABOUT THE DATA
data files were obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The following data files from the dataset were used to create the new dataset.


More information on the original dataset can be found at  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

<!-- -->
### DATA TRANSFORMATION AND CLEANING MEASURES
 
Merges the training and the test sets to create one data set.
note xxx not included??????
transformed variable names

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

### VARIABLE DESCRIPTIONS

all the variables and summaries you calculated, along
with units,

id
activity
dataset

tBodyAcc_mean_X
tBodyAcc_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyAccMag_mean
fBodyAccMag_std
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std









Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
