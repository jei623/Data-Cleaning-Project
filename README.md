##Making mobile phone motion data tidy
As part of the “Getting and Cleaning Data” courser course, I competed this tidy data project that uses data collected at the University of California – Irvine (UCI).  
###Study Design
UCI collected motion data from smartphones being worn by 30 participants doing a variety of activities.  This data was collected to try to predict the activities of people based on the motion data in their smartphones.  A full summary of the data collection process and motivation can be found at this website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The actual data set can be downloaded from 1 of the following 2 locations:
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip
###run_analysis.R
In this repository is an R script called “run_analysis.R”.  This is the R-script that I created to import the data into R and clean it up to meet the assignment requirements.  A short version of the assignment requirements is included here:
 “You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.”

For run_analysis.R to work you need to “source(“run_analysis.R”) into your working R directory.  Once that is done, make sure that the dataset above is in the working directory and run the only function in the file, “tidy_Samsung_data()”.  This will create a “tidy_data.txt” file in your working R directory with the tidy data set required for this assignment.

“run_analysis.R” is well commented so you should be able to follow the steps that were used to transform the provided data set into the one specified for the assignment.

###Code Book
There is also a code book in the repository.  This code book is part of any tidy data set and helps any future users understand what all of the variables are in the tidy data, especially information that is not explicit in the data set itself.  Please refer to that document in the repository for more information.
