how it works
============

Merge the training and the test sets to create one data set:

Read the files with subjects
Add all rows from train and test in one table with subjects. Called "subject_all".

Read the files with measurements
Add all rows from train and test in one table with measurements. Called "x_all".

Read the files with activity types
Add all rows from train and test sets in one table with activities. Called "y_all".
Add descriptive activity names to this table. So we can use descriptive activity names to name the activities in the data set.

Add three data.frames into one called "subject_y_x".

Add column names for the first three columns (Subject, Activity_Code and Activity) and then add column names for features.

Extract only the measurements on the mean and standard deviation for each measurement.

First find needed columns, then write them into tidy_data.

Write tidy_data into "tidy_data_1.txt"
