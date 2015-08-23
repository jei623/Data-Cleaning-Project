##Code Book
What follows is a description of the data included in the tidy data set created and some of the details that are not readily apparent when looking at the data table.
###Y Variable Descriptions

subject.id:
This is the variable that gives the test subject (person) number (values range from 1 to 30) for the each row of the data.

activity.name:
This variable describes the activity that the test subject was performing at the time the data was collected.  Possible values include walking, walking_upstairs, walking_downstairs, sitting, standing, and laying

###Excerpt  from original UCI data code book
“The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.”
“Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).”
“Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).”
“These signals were used to estimate variables of the feature vector for each pattern:  “
“'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.”
…
“Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable”

###Summarized (X) Data
The project requirements for the Coursera course requested that we take a subset of the variables described above that were summarized with either a mean or a standard deviation.  We were then supposed to take the means of all of these variables for each test subject (see “subject.id”) and activity (see “activity.name”)  After I took the means of these variables in this way, I renamed each of the variables to include the prefix “MEAN.OF.” to differentiate it from the original data points.

I decided to include variables in the data set that were “meanFreq” variables because frequencies can themselves be variables and a mean frequency is a summary of a lower level variable.  Based on the vague directions given for the assignment, I think that this fits the spirit of what was asked.

For any variable with “Acc” in the variable name, the acceleration values are in “standard gravity units ‘g’”

A full list of variables listed in the tidy data set follows and can be interpreted using the information in the “Excerpt  from original UCI data code book” section of this code book:
* MEAN.OF.tBodyAcc.mean...X
* MEAN.OF.tBodyAcc.mean...Y
* MEAN.OF.tBodyAcc.mean...Z
* MEAN.OF.tBodyAcc.std...X
* MEAN.OF.tBodyAcc.std...Y
* MEAN.OF.tBodyAcc.std...Z
* MEAN.OF.tGravityAcc.mean...X
* MEAN.OF.tGravityAcc.mean...Y
* MEAN.OF.tGravityAcc.mean...Z
* MEAN.OF.tGravityAcc.std...X
* MEAN.OF.tGravityAcc.std...Y
* MEAN.OF.tGravityAcc.std...Z
* MEAN.OF.tBodyAccJerk.mean...X
* MEAN.OF.tBodyAccJerk.mean...Y
* MEAN.OF.tBodyAccJerk.mean...Z
* MEAN.OF.tBodyAccJerk.std...X
* MEAN.OF.tBodyAccJerk.std...Y
* MEAN.OF.tBodyAccJerk.std...Z
* MEAN.OF.tBodyGyro.mean...X
* MEAN.OF.tBodyGyro.mean...Y
* MEAN.OF.tBodyGyro.mean...Z
* MEAN.OF.tBodyGyro.std...X
* MEAN.OF.tBodyGyro.std...Y
* MEAN.OF.tBodyGyro.std...Z
* MEAN.OF.tBodyGyroJerk.mean...X
* MEAN.OF.tBodyGyroJerk.mean...Y
* MEAN.OF.tBodyGyroJerk.mean...Z
* MEAN.OF.tBodyGyroJerk.std...X
* MEAN.OF.tBodyGyroJerk.std...Y
* MEAN.OF.tBodyGyroJerk.std...Z
* MEAN.OF.tBodyAccMag.mean..
* MEAN.OF.tBodyAccMag.std..
* MEAN.OF.tGravityAccMag.mean..
* MEAN.OF.tGravityAccMag.std..
* MEAN.OF.tBodyAccJerkMag.mean..
* MEAN.OF.tBodyAccJerkMag.std..
* MEAN.OF.tBodyGyroMag.mean..
* MEAN.OF.tBodyGyroMag.std..
* MEAN.OF.tBodyGyroJerkMag.mean..
* MEAN.OF.tBodyGyroJerkMag.std..
* MEAN.OF.fBodyAcc.mean...X
* MEAN.OF.fBodyAcc.mean...Y
* MEAN.OF.fBodyAcc.mean...Z 
* MEAN.OF.fBodyAcc.std...X
* MEAN.OF.fBodyAcc.std...Y
* MEAN.OF.fBodyAcc.std...Z
* MEAN.OF.fBodyAcc.meanFreq...X
* MEAN.OF.fBodyAcc.meanFreq...Y
* MEAN.OF.fBodyAcc.meanFreq...Z
* MEAN.OF.fBodyAccJerk.mean...X
* MEAN.OF.fBodyAccJerk.mean...Y
* MEAN.OF.fBodyAccJerk.mean...Z
* MEAN.OF.fBodyAccJerk.std...X
* MEAN.OF.fBodyAccJerk.std...Y
* MEAN.OF.fBodyAccJerk.std...Z
* MEAN.OF.fBodyAccJerk.meanFreq...X
* MEAN.OF.fBodyAccJerk.meanFreq...Y
* MEAN.OF.fBodyAccJerk.meanFreq...Z
* MEAN.OF.fBodyGyro.mean...X
* MEAN.OF.fBodyGyro.mean...Y
* MEAN.OF.fBodyGyro.mean...Z
* MEAN.OF.fBodyGyro.std...X
* MEAN.OF.fBodyGyro.std...Y
* MEAN.OF.fBodyGyro.std...Z
* MEAN.OF.fBodyGyro.meanFreq...X
* MEAN.OF.fBodyGyro.meanFreq...Y
* MEAN.OF.fBodyGyro.meanFreq...Z
* MEAN.OF.fBodyAccMag.mean..
* MEAN.OF.fBodyAccMag.std..
* MEAN.OF.fBodyAccMag.meanFreq..
* MEAN.OF.fBodyBodyAccJerkMag.mean..
* MEAN.OF.fBodyBodyAccJerkMag.std..
* MEAN.OF.fBodyBodyAccJerkMag.meanFreq..
* MEAN.OF.fBodyBodyGyroMag.mean..
* MEAN.OF.fBodyBodyGyroMag.std..
* MEAN.OF.fBodyBodyGyroMag.meanFreq..
* MEAN.OF.fBodyBodyGyroJerkMag.mean..
* MEAN.OF.fBodyBodyGyroJerkMag.std..
* MEAN.OF.fBodyBodyGyroJerkMag.meanFreq..
* MEAN.OF.angle.tBodyAccMean.gravity.
* MEAN.OF.angle.tBodyAccJerkMean..gravityMean.
* MEAN.OF.angle.tBodyGyroMean.gravityMean.
* MEAN.OF.angle.tBodyGyroJerkMean.gravityMean.
* MEAN.OF.angle.X.gravityMean.
* MEAN.OF.angle.Y.gravityMean.
* MEAN.OF.angle.Z.gravityMean.