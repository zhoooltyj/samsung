##Data Dictionary (tidy_data_1.txt)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 


###Subject 

Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

###Activity_Code 

Each row identifies the activity type. Its range is from 1 to 6.

###Activity

Each row identifies the activity type. Its value could be one of this set: 

* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING 

###Other columns

Other columns contain only the measurements on the mean and standard deviation for each measurement.

##Data Dictionary (tidy_data_2.txt)

The second tidy data set contains split data by subject and activity.

The first number in the name of the block identifies the subject who performed the activity. Its range is from 1 to 30. 

The second number in the nema of the block identifies the activity type. Its range is from 1 to 6.

Other columns contain only the measurements on the mean and standard deviation for each measurement. There is the average of each variable for each activity and each subject.
