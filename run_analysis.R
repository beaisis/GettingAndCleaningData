##########################################################################################################

# Coursera Class-033 : Getting and Cleaning Data Course Project
# Brian Altman
# October 20, 2015

# This script uses the UCI HAR Dataset downloaded to: 
# 1. Merges training, test and subject data set and combines to a single data file.
# 2. Replace columns numbers with feature names, subject andactivity
# 3. Select just the mean and standard deviation measures
# 4.  Make friendly names for selected columns
# 5. Label the data set with descriptive activity names. 
# 6. Creates a tidy data set with a average for each variable for each activity and each subject. 

##########################################################################################################

#set working directory for dataset location
setwd("C:/2015 R Folder/UCI HAR Dataset")

#download zip file and unzip files into sub directories
DataSetUrl      <- "https://https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
DownloadZipData <- "C:/2015 R Folder/UCI HAR Dataset/dataset.zip"
  
if(!file.exists(DownloadZipData)) { 
       download.file(DataSetUrl, DownloadZipData) 
       unzip(DownloadZipData, exdir = ".")
}
  
#1. Read each set of files and merge into a single file

merge1        <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
merge2        <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
mergedX       <- rbind(merge1, merge2)
rm(merge1, merge2) 

merge1        <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt")
merge2        <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt")
mergedY       <- rbind(merge1, merge2)
rm(merge1, merge2) 

merge1        <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
merge2        <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
mergedSubj    <- rbind(merge1, merge2)
rm(merge1, merge2) 

MergedAll     <- cbind(mergedSubj, mergedY, mergedX)
rm (mergedSubj, mergedY, mergedX)

#2. Replace columns numbers with feature names, subject andactivity
feature       <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/features.txt")
featurename   <- as.character(feature[,2])
newcolnames   <- c("subject", "activity", featurename)
colnames(MergedAll) <- newcolnames

#3 Select just the mean and standard deviation measures
MeanAndStdCols   <- grep(".*Mean.*|.*Std.*", colnames(MergedAll), ignore.case=TRUE)
subsetMergedAll  <- MergedAll[,c(1,2,MeanAndStdCols)]
rm (MeanAndStdCols,MergedAll)


#4 Make friendly names for selected columns
names(subsetMergedAll)<-gsub("Acc",      "Accelerometer", names(subsetMergedAll))
names(subsetMergedAll)<-gsub("angle",    "Angle",     names(subsetMergedAll))
names(subsetMergedAll)<-gsub("BodyBody", "Body",      names(subsetMergedAll))
names(subsetMergedAll)<-gsub("^f",       "Frequency", names(subsetMergedAll))
names(subsetMergedAll)<-gsub("-freq()",  "Frequency", names(subsetMergedAll), ignore.case = TRUE)
names(subsetMergedAll)<-gsub("gravity",  "Gravity",   names(subsetMergedAll))
names(subsetMergedAll)<-gsub("Gyro",     "Gyroscope", names(subsetMergedAll))
names(subsetMergedAll)<-gsub("Mag",      "Magnitude", names(subsetMergedAll))
names(subsetMergedAll)<-gsub("-mean()",  "Mean",      names(subsetMergedAll), ignore.case = TRUE)
names(subsetMergedAll)<-gsub("-std()",   "STD",       names(subsetMergedAll), ignore.case = TRUE)
names(subsetMergedAll)<-gsub("^t",       "Time",      names(subsetMergedAll))
names(subsetMergedAll)<-gsub("tBody",    "TimeBody",  names(subsetMergedAll))


#5 Label the data set with descriptive activity names. 
activityLabels <- read.table("C:/2015 R Folder/UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", header = FALSE)
subsetMergedAll$activity <- as.character(subsetMergedAll$activity)
for (i in 1:6){
  subsetMergedAll$activity[subsetMergedAll$activity == i] <- as.character(activityLabels[i,2])
}


#6 Create a tidy data set with average for each variable, activity, subject
tidyData <- aggregate(. ~subject + activity, subsetMergedAll, mean)
tidyData <- tidyData[order(tidyData$subject,tidyData$activity),]
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)
