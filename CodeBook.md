Overview
========
This document provides the code book for the result data frame. The variables in the data set are specified in the next section. Of the 561 measured variables in the original data set only the **mean** and **standard deviation** columns have been included in the output for this assignment. A description about the measured variables as specified in the `features_info.txt` file in the original dataset is quoted below:

 *"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.*

  *Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).*

  *Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).*

  *These signals were used to estimate variables of the feature vector for each pattern:
  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."*

## Dataset Variables

* **subject** A numeric identifier (1 through 30) for each volunteer who took part in the experiment
* **activity** A factor with levels: `LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS`
* **tbodyaccmeanx**
* **tbodyaccmeany**
* **tbodyaccmeanz**
* **tbodyaccstdx**
* **tbodyaccstdy**
* **tbodyaccstdz**
* **tgravityaccmeanx** 
* **tgravityaccmeany**
* **tgravityaccmeanz**
* **tgravityaccstdx**
* **tgravityaccstdy**
* **tgravityaccstdz**
* **tbodyaccjerkmeanx**
* **tbodyaccjerkmeany**
* **tbodyaccjerkmeanz**
* **tbodyaccjerkstdx**
* **tbodyaccjerkstdz**
* **tbodyaccjerkstdy**
* **tbodygyromeanx**
* **tbodygyromeany**
* **tbodygyromeanz**
* **tbodygyrostdx**
* **tbodygyrostdy**
* **tbodygyrostdz**
* **tbodygyrojerkmeanx**
* **tbodygyrojerkmeany**
* **tbodygyrojerkmeanz**
* **tbodygyrojerkstdx**
* **tbodygyrojerkstdy**
* **tbodygyrojerkstdz**
* **tbodyaccmagmean** 
* **tbodyaccmagstd** 
* **tgravityaccmagmean** 
* **tgravityaccmagstd** 
* **tbodyaccjerkmagmean** 
* **tbodyaccjerkmagstd** 
* **tbodygyromagmean** 
* **tbodygyromagstd** 
* **tbodygyrojerkmagmean** 
* **tbodygyrojerkmagstd** 
* **fbodyaccmeanx** 
* **fbodyaccmeany** 
* **fbodyaccmeanz** 
* **fbodyaccstdx** 
* **fbodyaccstdy** 
* **fbodyaccstdz** 
* **fbodyaccjerkmeanx** 
* **fbodyaccjerkmeany** 
* **fbodyaccjerkmeanz** 
* **fbodyaccjerkstdx** 
* **fbodyaccjerkstdy** 
* **fbodyaccjerkstdz** 
* **fbodygyromeanx** 
* **fbodygyromeany** 
* **fbodygyromeanz** 
* **fbodygyrostdx** 
* **fbodygyrostdy** 
* **fbodygyrostdz** 
* **fbodyaccmagmean** 
* **fbodyaccmagstd** 
* **fbodybodyaccjerkmagmean** 
* **fbodybodyaccjerkmagstd** 
* **fbodybodygyromagmean** 
* **fbodybodygyromagstd** 
* **fbodybodygyrojerkmagmean** 
* **fbodybodygyrojerkmagstd** 

References
==========
* **[Human Activity Recognition Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)