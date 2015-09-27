#CODEBOOK FOR "HARavg"" DATASET
#Project for Getting and Cleaning Data

### INTRODUCTION

Data was obtained from the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1] and transformed to create an independent data set called "HARavg". The data in the HARavg dataset consists of the average of each mean and standard deviation measurement- extracted from the HAR dataset-for each activity and each subject. For example, the first row of the dataset gives the averages for the standard deviation and mean measurements for participant #1 while laying down.

###About the Data
The Human Activity Recognition Using Smartphones Dataset Version 1.0 (HAR Dataset) consists of data from experiments carried out with a group of 30 volunteers. The volunteers were partitioned into test and train groups. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II); multiple movement measurements using sensor signals (accelerometer and gyroscope) were taken of each subject performing each activity. Variables that constituted the mean and standard deviation for various measurements were included in the dataset. 


###Downloaded Data Files
The following files were used from the HAR Dataset:

        features.txt- List of variables used on the feature vector.
        activity_labels.txt-Links the activity class number with the activity name. 
        X_train.txt- A 561-feature vector with time and frequency domain variables.
        y_train.txt- Training labels.
        subject_train.txt- Participant id by row (rows correspond with X_train.txt)
        X_test.txt- A 561-feature vector with time and frequency domain variables.
        y_test.txt- Test Labels
        subject_test.txt- Participant id by row (rows correspond with X_test.txt)

- More information about the data set can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
        - The Human Activity Recognition Using Smartphones Dataset Version 1.0.can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Variables extracted from HAR dataset
To create the HARavg data set:
-  The mean and standard deviation variables (denoted in the variable names with mean(), and std() respectively) for each feature vectors, available in the "X_test.txt" and "X_train.txt" files, were extracted from the HAR Dataset. 
-   The subject id was taken from the "y_train.txt" and "y_test.txt" files. 
-   The activity labels were taken from the "activity_labels.txt"" file. 

### DATA TRANSFORMATION AND DATA CLEANING MEASURES

The following steps were taken to clean and transform the data into the HARavg dataset:
 1.  The relevant files from the HAR Dataset were read into R Studio.&nbsp;
 2.  The vector of variable names was subsetted to include only measurements on the mean and standard deviation for each measurement (e.g. variables with mean() and std() in the variable name).&nbsp;
 3.  The vector of variables names was cleaned to remove parentheses and dashes.
 4.  The test and train data files, consisting of 561 feature vectors, were subsetted using the vector of variable names to include only the mean and standard deviation measurements (i.e. variables with mean() and std () in the variable name).
 5.  Using dplyr, the vector of variable names was added to the subsetted data sets.
 6.  Several variables were appended to both the test and train data sets: id, activity and group variables.
 7.  The "train" and "test data sets were joined together using rbind(). 
 8.  The plyr package was loaded and ddply was used to create the new data set called HARavg; the average of each variable was calculated for each activity, and each subject. 


### VARIABLE DESCRIPTIONS

There are 69 total variables in the final data set.They include the following:

### id
This is an interger variable. Its range is from 1 to 30. Each participant in the experiment was given a numeric id.

### activity
This is a character variable with the following category labels:
         - "WALKING"
         - "WALKING_UPSTAIRS"
         - "WALKING_DOWNSTAIRS"
         - "SITTING"
         - "STANDING"
         - "LAYING"

### group
This is a character variable that identified if the participant was part of the test group or train group using the labels "test" or "train. All participants of the experiment were assigned to one of the two groups. This identifed can help link participants back to the relevant original data set more efficiently than just using id. 

###averaged variables
The following variables are numeric variables. They represent the average value of a variable that measured the mean or standard deviation of a measurement, of a subject participating in a given activity. For example, the average tBodyAcc_mean_X, for participant #1, while LAYING down would be the averaged value of all tBodyAcc_mean_X measurements of participant #1 while they were laying down.

- tBodyAcc_mean_X
- tBodyAcc_mean_Y
- tBodyAcc_mean_Z
- tBodyAcc_std_X
- tBodyAcc_std_Y
- tBodyAcc_std_Z
- tGravityAcc_mean_X
- tGravityAcc_mean_Y
- tGravityAcc_mean_Z
- tGravityAcc_std_X
- tGravityAcc_std_Y
- tGravityAcc_std_Z
- tBodyAccJerk_mean_X
- tBodyAccJerk_mean_Y
- tBodyAccJerk_mean_Z
- tBodyAccJerk_std_X
- tBodyAccJerk_std_Y
- tBodyAccJerk_std_Z
- tBodyGyro_mean_X
- tBodyGyro_mean_Y
- tBodyGyro_mean_Z
- tBodyGyro_std_X
- tBodyGyro_std_Y
- tBodyGyro_std_Z
- tBodyGyroJerk_mean_X
- tBodyGyroJerk_mean_Y
- tBodyGyroJerk_mean_Z
- tBodyGyroJerk_std_X
- tBodyGyroJerk_std_Y
- tBodyGyroJerk_std_Z
- tBodyAccMag_mean
- tBodyAccMag_std
- tGravityAccMag_mean
- tGravityAccMag_std
- tBodyAccJerkMag_mean
- tBodyAccJerkMag_std
- tBodyGyroMag_mean
- tBodyGyroMag_std
- tBodyGyroJerkMag_mean
- tBodyGyroJerkMag_std
- fBodyAcc_mean_X
- fBodyAcc_mean_Y
- fBodyAcc_mean_Z
- fBodyAcc_std_X
- fBodyAcc_std_Y
- fBodyAcc_std_Z
- fBodyAccJerk_mean_X
- fBodyAccJerk_mean_Y
- fBodyAccJerk_mean_Z
- fBodyAccJerk_std_X
- fBodyAccJerk_std_Y
- fBodyAccJerk_std_Z
- fBodyGyro_mean_X
- fBodyGyro_mean_Y
- fBodyGyro_mean_Z
- fBodyGyro_std_X
- fBodyGyro_std_Y
- fBodyGyro_std_Z
- fBodyAccMag_mean
- fBodyAccMag_std
- fBodyBodyAccJerkMag_mean
- fBodyBodyAccJerkMag_std
- fBodyBodyGyroMag_mean
- fBodyBodyGyroMag_std
- fBodyBodyGyroJerkMag_mean
- fBodyBodyGyroJerkMag_std

For more information on the measurements values used to create the above variables, see: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Note: the above variable names closely match the variable names found in the HAR dataset, with the exception that dashes and parenthesis were omitted from the new variable names above and replaced with an underscore.  
Note: the original variables were normalized and bounded within [-1,1]

#Acknowledgements
Original data made available by:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
