
## first we should check if we already have the unzipped files

unzip("getdata-projectfiles-UCI HAR Dataset.zip")

##read the files with subjects

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

## add all rows in one table

subject_all <- rbind(subject_train,subject_test)


##read the files with measurements

x_train <- read.table("UCI HAR Dataset/train/x_train.txt") 
x_test <- read.table("UCI HAR Dataset/test/x_test.txt") 

## add all rows in one table

x_all <- rbind(x_train, x_test)

##read the files with activity types

y_train <- read.table("UCI HAR Dataset/train/y_train.txt") 
y_test <- read.table("UCI HAR Dataset/test/y_test.txt") 


## add all rows in one table

y_all <- rbind(y_train, y_test)

## add descriptive activity names

for (i in 1:nrow(y_all)){
        if (y_all[i,1] == 1) y_all[i,2] <- "WALKING"
        if (y_all[i,1] == 2) y_all[i,2] <- "WALKING_UPSTAIRS"
        if (y_all[i,1] == 3) y_all[i,2] <- "WALKING_DOWNSTAIRS"
        if (y_all[i,1] == 4) y_all[i,2] <- "SITTING"
        if (y_all[i,1] == 5) y_all[i,2] <- "STANDING"
        if (y_all[i,1] == 6) y_all[i,2] <- "LAYING"
        
}

## add three data.frames into one:

library(plyr)
subject_y <- cbind(subject_all, y_all) ## add activity to subject

subject_y_x <- cbind(subject_y, x_all) ## add measurements to get (subject, activity, measurement)

features <- read.table("UCI HAR Dataset/features.txt")


## add column names:

v <- c(1:564)

v[1] <- "Subject"
v[2] <- "Activity_Code"
v[3] <- "Activity"

feat_char <- NULL

## add column names for features

for (i in 1:561) {
        feat_char[i] <- as.character(features[i,2])
        v[i+3] <- feat_char[i]
}
colnames(subject_y_x) <- v


## extract only the measurements on the mean and standard deviation for each measurement

tidy_data <- subject_y_x[1:3]

## search for needed columns:

m <- grep("mean\\(\\)$", colnames(subject_y_x))
s <- grep("std\\(\\)$", colnames(subject_y_x))

j<- NULL

## add needed columns:

for (i in 1:length(m)) {
        
        j <- m[i]
        tidy_data <- cbind(tidy_data,subject_y_x[j])
}


for (i in 1:length(s)) {
        
        j <- s[i]
        tidy_data <- cbind(tidy_data,subject_y_x[j])
}

        
write.table(tidy_data, file = "tidy_data_1.txt")
        
##adding columns in Subsetting
##adding tables in creating new variables


##Reshaping data for the averages values!!