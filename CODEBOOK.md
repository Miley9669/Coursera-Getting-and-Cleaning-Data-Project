# Getting and Cleaning Data Project

## Modifications to the data in order to create the tidy dataset

*	Attached Subject IDs to the test and train dataset.
*	Merged the test and train datasets
*	Attached descriptive names for each of the predictor variables
*	Subsetted the data so that it only includes columns that provide either a mean or standard deviation metric for a given observation
*	Attached a descriptive name for each of the response variables
*	Summarized the data by subject and response activity and calculated the mean value for each of the predictor variables

## Descriptions

### Identifiers used to group the data

* subjectID
* activityID
* activityType
* tBodyAcc.mean...X
* tBodyAcc.mean...Y
* tBodyAcc.mean...Z
* tBodyAcc.std...X
* tBodyAcc.std...Y
* tBodyAcc.std...Z
* tGravityAcc.mean...X
* tGravityAcc.mean...Y
* tGravityAcc.mean...Z
* tGravityAcc.std...X
* tGravityAcc.std...Y
* tGravityAcc.std...Z
* tBodyAccJerk.mean...X
* tBodyAccJerk.mean...Y
* tBodyAccJerk.mean...Z
* tBodyAccJerk.std...X
* tBodyAccJerk.std...Y
* tBodyAccJerk.std...Z
* tBodyGyro.mean...X
* tBodyGyro.mean...Y
* tBodyGyro.mean...Z
* tBodyGyro.std...X
* tBodyGyro.std...Y
* tBodyGyro.std...Z
* tBodyGyroJerk.mean...X
* tBodyGyroJerk.mean...Y
* tBodyGyroJerk.mean...Z
* tBodyGyroJerk.std...X
* tBodyGyroJerk.std...Y
* tBodyGyroJerk.std...Z
* tBodyAccMag.mean..
* tBodyAccMag.std..
* tGravityAccMag.mean..
* tGravityAccMag.std..
* tBodyAccJerkMag.mean..
* tBodyAccJerkMag.std..
* tBodyGyroMag.mean..
* tBodyGyroMag.std..
* tBodyGyroJerkMag.mean..
* tBodyGyroJerkMag.std..
* fBodyAcc.mean...X
* fBodyAcc.mean...Y
* fBodyAcc.mean...Z
* fBodyAcc.std...X
* fBodyAcc.std...Y
* fBodyAcc.std...Z
* fBodyAccJerk.mean...X
* fBodyAccJerk.mean...Y
* fBodyAccJerk.mean...Z
* fBodyAccJerk.std...X
* fBodyAccJerk.std...Y
* fBodyAccJerk.std...Z
* fBodyGyro.mean...X
* fBodyGyro.mean...Y
* fBodyGyro.mean...Z
* fBodyGyro.std...X
* fBodyGyro.std...Y
* fBodyGyro.std...Z
* fBodyAccMag.mean..
* fBodyAccMag.std..
* fBodyBodyAccJerkMag.mean..
* fBodyBodyAccJerkMag.std..
* fBodyBodyGyroMag.mean..
* fBodyBodyGyroMag.std..
* fBodyBodyGyroJerkMag.mean..
* fBodyBodyGyroJerkMag.std..

