Introduction
============

This repository contains the scripts created as part of the "Getting and Cleaning Data" course assignment. It contains an R script
`run_analysis.r` that does the following (list copied from the assignment page):

* Merges the training and the test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive names
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject

The script downloads a data set from [Smartphone Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
Unzipping the file