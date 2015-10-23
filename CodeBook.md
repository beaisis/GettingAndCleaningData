# Code Book

Description of run_analytics.R process

Run_analysis performs the following functions:
*1. Merges training, test and subject data set and combines to a single data file
*2. Replace columns numbers with feature names, subject andactivity
*3. Select just the mean and standard deviation measures
*4. Make friendly names for selected columns
*5. Label the data set with descriptive activity names. 
*6. Creates a tidy data set with a average for each variable for each activity and each subject. 


These variables identify the unique subject/activity pair the variables relate to:
 - Subject: the integer subject ID.
 - Activity: the string activity name:
  - Walking
  - Walking Upstairs
  - Walking Downstairs
  - Sitting
  - Standing
  - Laying

All variables are the mean and Standard deviation of a measurement for each subject and activity. This is indicated by Std or  Mean in the variable name.  All values are floating point numbers.

The following fields represent the mean of recorded data points for the given subject and activity. The detailed description of the measurement types can be found in features_info.txt (included in the data zip file).

### Columns:
* subject_id 
* activity_labels 
* TimeBodyAccelerometerMean()-X
* TimeBodyAccelerometerMean()-Y
* TimeBodyAccelerometerMean()-Z
* TimeBodyAccelerometerSTD()-X
* TimeBodyAccelerometerSTD()-Y
* TimeBodyAccelerometerSTD()-Z
* TimeGravityAccelerometerMean()-X
* TimeGravityAccelerometerMean()-Y
* TimeGravityAccelerometerMean()-Z
* TimeGravityAccelerometerSTD()-X
* TimeGravityAccelerometerSTD()-Y
* TimeGravityAccelerometerSTD()-Z
* TimeBodyAccelerometerJerkMean()-X
* TimeBodyAccelerometerJerkMean()-Y
- TimeBodyAccelerometerJerkMean()-Z
-TimeBodyAccelerometerJerkSTD()-X
-TimeBodyAccelerometerJerkSTD()-Y
-TimeBodyAccelerometerJerkSTD()-Z
-TimeBodyGyroscopeMean()-X
-TimeBodyGyroscopeMean()-Y
-TimeBodyGyroscopeMean()-Z
-TimeBodyGyroscopeSTD()-X
-TimeBodyGyroscopeSTD()-Y
-TimeBodyGyroscopeSTD()-Z
-TimeBodyGyroscopeJerkMean()-X
-TimeBodyGyroscopeJerkMean()-Y
-TimeBodyGyroscopeJerkMean()-Z
-TimeBodyGyroscopeJerkSTD()-X
-TimeBodyGyroscopeJerkSTD()-Y
-TimeBodyGyroscopeJerkSTD()-Z
-TimeBodyAccelerometerMagnitudeMean()
-TimeBodyAccelerometerMagnitudeSTD()
-TimeGravityAccelerometerMagnitudeMean()
-TimeGravityAccelerometerMagnitudeSTD()
-TimeBodyAccelerometerJerkMagnitudeMean()
-TimeBodyAccelerometerJerkMagnitudeSTD()
-TimeBodyGyroscopeMagnitudeMean()
-TimeBodyGyroscopeMagnitudeSTD()
-TimeBodyGyroscopeJerkMagnitudeMean()
-TimeBodyGyroscopeJerkMagnitudeSTD()
-FrequencyBodyAccelerometerMean()-X
-FrequencyBodyAccelerometerMean()-Y
-FrequencyBodyAccelerometerMean()-Z
-FrequencyBodyAccelerometerSTD()-X
-FrequencyBodyAccelerometerSTD()-Y
-FrequencyBodyAccelerometerSTD()-Z
-FrequencyBodyAccelerometerMeanFreq()-X
-FrequencyBodyAccelerometerMeanFreq()-Y
-FrequencyBodyAccelerometerMeanFreq()-Z
-FrequencyBodyAccelerometerJerkMean()-X
-FrequencyBodyAccelerometerJerkMean()-Y
-FrequencyBodyAccelerometerJerkMean()-Z
-FrequencyBodyAccelerometerJerkSTD()-X
-FrequencyBodyAccelerometerJerkSTD()-Y
-FrequencyBodyAccelerometerJerkSTD()-Z
-FrequencyBodyAccelerometerJerkMeanFreq()-X
-FrequencyBodyAccelerometerJerkMeanFreq()-Y
-FrequencyBodyAccelerometerJerkMeanFreq()-Z
-FrequencyBodyGyroscopeMean()-X
-FrequencyBodyGyroscopeMean()-Y
-FrequencyBodyGyroscopeMean()-Z
-FrequencyBodyGyroscopeSTD()-X
-FrequencyBodyGyroscopeSTD()-Y
-FrequencyBodyGyroscopeSTD()-Z
-FrequencyBodyGyroscopeMeanFreq()-X
-FrequencyBodyGyroscopeMeanFreq()-Y
-FrequencyBodyGyroscopeMeanFreq()-Z
-FrequencyBodyAccelerometerMagnitudeMean()
-FrequencyBodyAccelerometerMagnitudeSTD()
-FrequencyBodyAccelerometerMagnitudeMeanFreq()
-FrequencyBodyAccelerometerJerkMagnitudeMean()
-FrequencyBodyAccelerometerJerkMagnitudeSTD()
-FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()
-FrequencyBodyGyroscopeMagnitudeMean()
-FrequencyBodyGyroscopeMagnitudeSTD()
-FrequencyBodyGyroscopeMagnitudeMeanFreq()
-FrequencyBodyGyroscopeJerkMagnitudeMean()
-FrequencyBodyGyroscopeJerkMagnitudeSTD()
-FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()
-Angle(TimeBodyAccelerometerMean,Gravity)
-Angle(TimeBodyAccelerometerJerkMean),GravityMean)
-Angle(TimeBodyGyroscopeMean,GravityMean)
-Angle(TimeBodyGyroscopeJerkMean,GravityMean)
-Angle(X,GravityMean)
-Angle(Y,GravityMean)
-Angle(Z,GravityMean)

More information
Detailed information on the experiment and the data can be found in  README.txt and features_info.txt files included in the experiment data zip file or find more information on the dataset homepage.
