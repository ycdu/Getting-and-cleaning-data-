## Install and load packages
packages <- c("dplyr", "reshape2")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

## Get data
#  download data if the zip file doesn't exist in the working directory
if (!file.exists("raw.zip")){
  fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL,destfile="raw.zip")
}
#  extract the file if it's not extracted yet
if (!file.exists("UCI HAR Dataset/test/subject_test.txt")){
  unzip("raw.zip", overwrite = FALSE)
}

## Read data
features<-read.table("UCI HAR Dataset/features.txt")
activity <- read.table("UCI HAR Dataset/activity_labels.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/x_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
x_test <- read.table("UCI HAR Dataset/test/x_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

## Step 1: Merge the training and the test sets to create one data set.
subject_all <- rbind(subject_train,subject_test)
x_all <- rbind(x_train, x_test)
y_all <- rbind(y_train, y_test)
all1 <- cbind(subject_all, y_all,x_all)

## Step 2: Extracts only the measurements on the mean and standard deviation 
## for each measurement. 

#  get the index of the features that contain mean() or std()
index <- grep("-mean\\(\\)|-std()",features[,2],ignore.case=TRUE)
#  get the index of the features that don't contain mean() or std()
index_alt<-features[!features[,1] %in% index,1]
#  remove those columns from the dataset that don't contain mean() or std()
all2 <- all1[,-(index_alt+2)]

## Step 3: Use descriptive activity names to name the activities in the data set
names(activity)<-c("code","activity")
all3 <- merge(activity, all2, by.y="V1.1",by.x="code")

## Step 4: Appropriately label the data set with descriptive variable names.

# Rename the features names so that they are more meaningful. Here I restrain from expanding
# the more obvious abbreviation e.g. acc so that the column names won't be too long
feature_names <- as.character(features[index,2])
feature_names <- tolower(feature_names)
feature_names <- gsub("^t","time.",feature_names)
feature_names <- gsub("^f","frequency.",feature_names)
feature_names <- gsub("-",".",feature_names)
feature_names <- gsub("\\(\\)","",feature_names)

# Rename the column names
names(all3) <- c("activity.code","activity.name", "subject.code",feature_names)

## Step 5: From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.

# Sort the data by activity and subject
all4 <- all3[with(all3, order(activity.code,subject.code)),]
# Group the data set by activity and subject
all5<- group_by(all4, activity.name, subject.code)
# Summarise the data to obtain the average of each variable for each activity and subject
tidy_data<- summarise_each(all5, funs(mean))

## Write the data to a file
write.table(tidy_data, file = "clean_data.txt",row.names=FALSE) 

