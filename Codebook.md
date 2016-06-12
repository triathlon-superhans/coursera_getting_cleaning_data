---
title: "Codebook"
output: html_document
---

This codebook is created by Hans Schoonen, and explains the data used for the creation of the tidy_data.txt set.

##Sourcedata:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

##The following modes are possible:
WALKING  
WALKING_UPSTARTS  
WALKING_DOWNSTAIRS  
SITTING  
STANDING  
LAYING  

##Files:

train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample; Its range is from 1 to 30  
train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'  
train/Inertial Signals/total_acc_y_train.txt: The acceleration signal from the smartphone accelerometer Y axis in standard gravity units 'g  
train/Inertial Signals/total_acc_z_train.txt: The acceleration signal from the smartphone accelerometer Z axis in standard gravity units 'g  
train/Inertial Signals/body_acc_x_train.txt: The body acceleration signal obtained by subtracting the gravity from the total acceleration  
train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector measured by the gyroscope for each window sample; The units are radians/second  

## Code variables Overview:

* strain:subject_train.txt", header = FALSE)
* ytrain: temporary vector containing y_train.txt
* xtrain: temporary vector containing X_train.txt
* stest: temporary vector containing subject_test.txt
* ytest: temporary vector containingy_test.txt
* xtest: temporary vector containing X_test.txt
* features: vector - features.txt
* alabels: vector - activity_labels.txt
* xmerged: merged dataset og xtest and xtrain
* ymerged: merged dataset of ytest, ytrain
* subject: merged dataset of stest, strain
* meanstdonly: filtered - mean and std only
* meanstdok: prepared with label
* dataready: complete daytaset
* tidy_data.txt ==> Out put with tidied data

## Raw data Variable Overview of variables used in this assignement (mean/std)
* tBodyAcc_mean_X
* tBodyAcc_mean_Y
* tBodyAcc_mean_Z
* tBodyAcc_std_X
* tBodyAcc_std_Y
* tBodyAcc_std_Z
* tGravityAcc_mean_X
* tGravityAcc_mean_Y
* tGravityAcc_mean_Z
* tGravityAcc_std_X
* tGravityAcc_std_Y
* tGravityAcc_std_Z
* tBodyAccJerk_mean_X
* tBodyAccJerk_mean_Y
* tBodyAccJerk_mean_Z
* tBodyAccJerk_std_X
* tBodyAccJerk_std_Y
* tBodyAccJerk_std_Z
* tBodyGyro_mean_X
* tBodyGyro_mean_Y
* tBodyGyro_mean_Z
* tBodyGyro_std_X
* tBodyGyro_std_Y
* tBodyGyro_std_Z
* tBodyGyroJerk_mean_X
* tBodyGyroJerk_mean_Y
* tBodyGyroJerk_mean_Z
* tBodyGyroJerk_std_X
* tBodyGyroJerk_std_Y
* tBodyGyroJerk_std_Z
* tBodyAccMag_mean_
* tBodyAccMag_std_
* tGravityAccMag_mean_
* tGravityAccMag_std_
* tBodyAccJerkMag_mean_
* tBodyAccJerkMag_std_
* tBodyGyroMag_mean_
* tBodyGyroMag_std_
* tBodyGyroJerkMag_mean_
* tBodyGyroJerkMag_std_
* fBodyAcc_mean_X
* fBodyAcc_mean_Y
* fBodyAcc_mean_Z
* fBodyAcc_std_X
* fBodyAcc_std_Y
* fBodyAcc_std_Z
* fBodyAcc_meanFreq_X
* fBodyAcc_meanFreq_Y
* fBodyAcc_meanFreq_Z
* fBodyAccJerk_mean_X
* fBodyAccJerk_mean_Y
* fBodyAccJerk_mean_Z
* fBodyAccJerk_std_X
* fBodyAccJerk_std_Y
* fBodyAccJerk_std_Z
* fBodyAccJerk_meanFreq_X
* fBodyAccJerk_meanFreq_Y
* fBodyAccJerk_meanFreq_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z
* fBodyGyro_std_X
* fBodyGyro_std_Y
* fBodyGyro_std_Z
* fBodyGyro_meanFreq_X
* fBodyGyro_meanFreq_Y
* fBodyGyro_meanFreq_Z
* fBodyAccMag_mean_
* fBodyAccMag_std_
* fBodyAccMag_meanFreq_
* fBodyBodyAccJerkMag_mean_
* fBodyBodyAccJerkMag_std_
* fBodyBodyAccJerkMag_meanFreq_
* fBodyBodyGyroMag_mean_
* fBodyBodyGyroMag_std_
* fBodyBodyGyroMag_meanFreq_
* fBodyBodyGyroJerkMag_mean_
* fBodyBodyGyroJerkMag_std_
* fBodyBodyGyroJerkMag_meanFreq_
* angle_tBodyAccMean_gravity_
* angle_tBodyAccJerkMean_gravityMean_
* angle_tBodyGyroMean_gravityMean_
* angle_tBodyGyroJerkMean_gravityMean_
* angle_X_gravityMean_
* angle_Y_gravityMean_
* angle_Z_gravityMean_


