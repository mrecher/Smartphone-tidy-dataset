# Smartphone-tidy-dataset
Project: Getting and Cleaning Data

### Introduction

Data was obtained from the Human Activity Recognition Using Smartphones Dataset Version 1.0 [1] and transformed to create a new data set called "HARavg". 

The Human Activity Recognition Using Smartphones Dataset Version 1.0 (HAR Dataset) consists of data from experiments carried out with a group of 30 volunteers. The volunteers were partitioned into test and train groups. Each person performed six activities wearing a smartphone (Samsung Galaxy S II); multiple movement measurements were taken of each subject performing each activity.

To create the HARavg data set, the mean and standard deviation variables for each measurement in the "test" and "train" files were extracted from the HAR Dataset, along with variable features, subject id, and activity labels from associated files. The data were combined and the average was taken of each of the mean and standard deviation variables, for each activity, and each subject to create the The HARavg"" data set.

See CodeBook.md for more details about the the Human Activity Recognition Using Smartphones Dataset Version 1.0 and HARavg data set.


### The HARavg data set includes the following files:

- 'README.md'

- 'CodeBook.md':describes the the data files used to create the new data set, data transformations and data cleaning measures performed on the original data to create the new data set,and descriptions of variables in the new data set. 

- 'run_analysis.R':script for creating the new, independent data set. NOTE: To sucessfully run the script, the "UCI HAR Dataset"" folder NEEDS to be in the WORKING DIRECTORY. 

The code in the run_analysis.R script consists of:
        Two functions: 
              clean_data():
              merge_data():
        Code that:
             - Runs the merge data function (which runs the clean_data function and create
                a merged data set called test_and_train)
             -Creates the independent data set HARavg (see CodeBook.md for details)
             -Writes the HARavg data set into text file saved in working directory

If the entire script is run, it will produce the HARavg data in the Environment window in R Studio.The script will also write the data set to a text file saved in the working directory. If you want to read the text file from the working directory use the following R code: read.table("HARavg.txt", header=TRUE)


[1]The Human Activity Recognition Using Smartphones Dataset Version 1.0.can be downloaded at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ;
More information about the data set can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
