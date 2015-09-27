##Code to create HARavg data set 
## Project for JHU - Getting and Cleaning Data

#See CodeBook.md and README.md for details about this data set.

#The code consists of two functions: 
#       clean_data()
#       merge_data()
#AND code that:
#       - Runs the merge_data function (which runs the clean_data function and create
#         a merged data set)
#       -Creates an independent data set (see CodeBook.md for details)
#       -Writes the new data table into a text file saved in working directory


#CLEAN DATA FUNCTION
#The clean_data function reads in files from the UCI HAR Dataset folder saved in
# the working directory. The folder can be downloaded at:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#The function then extracts variables of interest (mean and std variables)
# from the test and train data, and adds column names, labels and identifying variables.
#The function can take arguments. If no arugment is passed, it defualts to reading in 
# "train" data and creating a "train" data set. If another argument is passed it reads
#in "test" data and creates a "test" data set.

###FOR CODE TO RUN YOU MUST HAVE "UCI HAR Dataset" FOLDER IN WORKING DIRECTORY

clean_data <- function(train_or_test="TRAINING") {
        var_names = read.table("UCI HAR Dataset/features.txt")
        if(train_or_test == "TRAINING") {
                x_data = read.table("UCI HAR Dataset/train/X_train.txt")
                activity_num= read.table("UCI HAR Dataset/train/y_train.txt")
                subject_id=read.table("UCI HAR Dataset/train/subject_train.txt")
        } else {
                x_data = read.table("UCI HAR Dataset/test/X_test.txt")
                activity_num= read.table("UCI HAR Dataset/test/y_test.txt")
                subject_id=read.table("UCI HAR Dataset/test/subject_test.txt")
        }
        
        #ONLY KEEP MEAN AND STD VARIABLES
        
        mean_std_var <- grep("mean|std", var_names$V2, value = FALSE) 
        mean_std_names <- grep("mean|std", var_names$V2, value = TRUE)
        mean_freq_var<- grep("meanFreq", var_names$V2, value = FALSE) 
        mean_freq_names<- grep("meanFreq", var_names$V2, value = TRUE)
        idx = which( mean_std_var %in% mean_freq_var) 
        var_keep = mean_std_names[-idx]
        var_keep1<- as.character(var_keep)
        var_keep2<- gsub("\\(\\)","", var_keep1)
        var_keep3<- gsub("-","_", var_keep2)
        var_keep_num<- mean_std_var[-idx] 
        library(dplyr) 
        x_data_sub<- select(x_data,var_keep_num)
        colnames(x_data_sub)<- var_keep3 
        
        #APPEND SUBJECT AND ACTIVITY VARIABLES
        x_data_sub$activity<- activity_num$V1 
        x_data_sub$id<- subject_id$V1
        
        #CREATE NEW ACTIVITY VARIABLE
        #New variable has activity labels instead of activity numbers
        x_data_sub$activity[x_data_sub$activity =="1"]<-"WALKING"
        x_data_sub$activity[x_data_sub$activity =="2"]<-"WALKING_UPSTAIRS"
        x_data_sub$activity[x_data_sub$activity =="3"]<-"WALKING_DOWNSTAIRS"
        x_data_sub$activity[x_data_sub$activity =="4"]<-"SITTING"
        x_data_sub$activity[x_data_sub$activity =="5"]<-"STANDING"
        x_data_sub$activity[x_data_sub$activity =="6"]<-"LAYING"
        
        #CREATE APPEND NEW TRAIN VARIABLE
        #variable identifies if subject part of test or train group
        if(train_or_test == "TRAINING") {
                train <- rep("train", nrow(x_data_sub))
                x_data_sub$group<- train
        } else {
                test <- rep("test", nrow(x_data_sub))
                x_data_sub$group<- test
                
        }
        x_data_sub
}


#MERGE DATA FUNCTION
#The merge_data function uses the clean_data function to produce cleaned and
# subsetted "test" and "train" datasets. It then merges the test and train data sets,
# and produces a merged data set called train_and_test in the global environment.
merge_data <- function() {
        training_data <- clean_data()
        #View(training_data)
        test_data <- clean_data("TEST")
        #View(test_data)
        test_and_train<- rbind(training_data, test_data)
        #View(test_and_train)
        test_and_train
}

#CODE TO RUN MERGE_DATA FUNCTION
test_and_train<-merge_data()

#CREATION OF NEW DATA SET 
# The code creates a new data "HARavg" set from the test_and_train data set created by the 
# merged_data function. The HARavg data set consists of the average of each of the mean and standard 
# deviation variables (extracted from the HAR dataset), for each activity and each subject.
library(plyr)
HARavg<- ddply(test_and_train, .(id, activity, group), numcolwise(mean))


#WRITE TABLE INTO TEXT FILE
#This code writes the new data set into a text file saved into the wrking directory
write.table(HARavg, file = "HARavg.txt", sep="\t", row.name=FALSE)

