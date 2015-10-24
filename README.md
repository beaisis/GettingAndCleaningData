## Tidied Data from the Human Activity Recognition Using Smartphones Dataset

### Class Project Purpose

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

### Study Design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain

The Study's data set can be found here:

  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


### Script Flow

The script uses the subdirectory "./UCI HAR Dataset/" for the files.  The script will create the 
subdirectory, download the Dataset to the subdirectory and unzip the files. Once unzipped, the following steps are executed
against the files 
 1. Merges training, test and subject data set and combines to a single data file.
 2. Replace columns numbers with feature names, subject andactivity
 3. Select just the mean and standard deviation measures
 4. Make friendly names for selected columns
 5. Label the data set with descriptive activity names. 
 6. Creates a tidy data set with a average for each variable for each activity and each subject. 


### To Create the tidy data set

1. Start R
2. Source run_analysis.R into the working directory
3. The program will create a subdirectory from your working directory. The subdirectory is: "/UCI HAR Dataset"
4. The program will load the data set, unzip the files into the subdirectory.
5. The program will transform the data sets per steps 1-6 above.
3. The final data set is 'tidy.txt' and will also be placed into the subdirectory..   

### Tidy.txt

tidy.txt can be read with R: read.table("./UCI HAR Dataset/tidy.txt", header = TRUE). A description of the variables can be found in 'CodeBook.md'.

### More information

Detailed information on the experiment and the data can be found in  README.txt and features_info.txt files included in the experiment data zip file or find more information on the dataset homepage.

