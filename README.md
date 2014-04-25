Introduction
============

This repository contains the scripts created as part of the "Getting and Cleaning Data" course assignment. It contains an R script
`run_analysis.r` that does the following (list copied from the assignment page):

* Merges the training and the test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive names
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject

Script Execution
================
* The script downloads a data set from [Smartphone Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
* The training files are in the **train** directory. A training data frame is created from the three files in that directory: `subject_train.txt, y_train.txt, X_train.txt`
* The test files are in the **test** directory. The three files pertaining to the test data `subject_test.txt, y_test.txt, X_test.txt` are combined into a test data frame.
* The **subject_** files contain the subject variable data. The **y_** files contain data about the activity variable. The **X_** files contain the measurement variables data.
* The training and testing data frames are combined to form a single frame

## Exploratory Analysis
### Data Details
* There are 7352 observations in each of the files and no missing data in any of them
* The *features.txt* file contains the measurement variable names. These are used as the column names for the 561 measurement variables
* The subject data is assigned the *subject* column name and the activity data gets the *activitycode* name

## Data Cleanup
* Since we are interested in only the **mean** and **standard deviation** measurements, we retrieve a subset of the original data frame with only the following columns:
    * Subject
    * Activity
    * All columns that have "mean()" or "std()" in their names
* The column names are made tidy by removing any special characters in them and are lower-cased

## Result Computation
* The `aggregate` built-in function is used to calculate the average for each activity/suject on each variable
* The activity column with numeric values is replaced with a corresponding column that contains descriptive labels for those values
* The result is written out to a *Results.txt* file using the `write.table` function and a code book skeleton is created using the `prompt` function