Code Book
========================================================
## Description tidy data set

The tidy dataset consists of a data frame with 68 columns and 180 rows. The 180 rows in the tidy dataset are the result of the melt and casting to means of the 30 subjects against the 6 activities; this results in 30 x 6 = 180 rows.

All variables/columns were named using the "camel casing" convention. The first two variables (activityID and subjectID) were used to create the tall dataset through melt, and then by casting, the summary was created with these two variables. The description for the remaining variables (index 3 through 68) are grouped by their origin. Each group represents statistics (mean and standard deviation) for a group of X, Y, and Z directions. Note that the starting letter for each of the variable names represents *t* for transmitted, or measured, and *f* for FFT (fast Fourier transform) derived. The variables containing *Gyro* and/or *Jerk* were calculated either by time derivation or euclidean norm.

| Index | Variable Name            | Type             | Description                                                                                                                                                       |
|-------|--------------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1     | activityID               | factor[6 levels] | Activities performed by people while recording data, can be any of the following 6:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING"    |
| 2     | subjectID                | integer          | Subjects[1:30]                                                                                                                                                    |
| 3     | tBodyAccMeanX            | integer          | Body Acceleration Statistics for X, Y, and Z                                                                                                                      |
| 4     | tBodyAccMeanY            | integer          | Body Acceleration Statistics for X, Y, and Z                                                                                                                      |
| 5     | tBodyAccMeanZ            | integer          | Body Acceleration Statistics for X, Y, and Z                                                                                                                      |
| 6     | tBodyAccStdX             | integer          | Body Acceleration Statistics for X, Y, and Z                                                                                                                      |
| 7     | tBodyAccStdY             | integer          | Body Acceleration Statistics for X, Y, and Z                                                                                                                      |
| 8     | tBodyAccStdZ             | integer          | Body Acceleration Statistics for X, Y, and Z                                                                                                                      |
| 9     | tGravityAccMeanX         | integer          | Gravity Acceleration Statistics for X, Y, and Z                                                                                                                   |
| 10    | tGravityAccMeanY         | integer          | Gravity Acceleration Statistics for X, Y, and Z                                                                                                                   |
| 11    | tGravityAccMeanZ         | integer          | Gravity Acceleration Statistics for X, Y, and Z                                                                                                                   |
| 12    | tGravityAccStdX          | integer          | Gravity Acceleration Statistics for X, Y, and Z                                                                                                                   |
| 13    | tGravityAccStdY          | integer          | Gravity Acceleration Statistics for X, Y, and Z                                                                                                                   |
| 14    | tGravityAccStdZ          | integer          | Gravity Acceleration Statistics for X, Y, and Z                                                                                                                   |
| 15    | tBodyAccJerkMeanX        | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z                                                                                              |
| 16    | tBodyAccJerkMeanY        | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z                                                                                              |
| 17    | tBodyAccJerkMeanZ        | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z                                                                                              |
| 18    | tBodyAccJerkStdX         | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z                                                                                              |
| 19    | tBodyAccJerkStdY         | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z                                                                                              |
| 20    | tBodyAccJerkStdZ         | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z                                                                                              |
| 21    | tBodyGyroMeanX           | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z                                                                                              |
| 22    | tBodyGyroMeanY           | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z                                                                                              |
| 23    | tBodyGyroMeanZ           | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z                                                                                              |
| 24    | tBodyGyroStdX            | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z                                                                                              |
| 25    | tBodyGyroStdY            | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z                                                                                              |
| 26    | tBodyGyroStdZ            | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z                                                                                              |
| 27    | tBodyGyroJerkMeanX       | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 28    | tBodyGyroJerkMeanY       | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 29    | tBodyGyroJerkMeanZ       | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 30    | tBodyGyroJerkStdX        | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 31    | tBodyGyroJerkStdY        | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 32    | tBodyGyroJerkStdZ        | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 33    | tBodyAccMagMean          | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 34    | tBodyAccMagStd           | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 35    | tGravityAccMagMean       | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 36    | tGravityAccMagStd        | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 37    | tBodyAccJerkMagMean      | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 38    | tBodyAccJerkMagStd       | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 39    | tBodyGyroMagMean         | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 40    | tBodyGyroMagStd          | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 41    | tBodyGyroJerkMagMean     | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 42    | tBodyGyroJerkMagStd      | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z                                                                                        |
| 43    | fBodyAccMeanX            | integer          | Body Acceleration Statistics for X, Y, and Z from FFT of from Inertial Signal                                                                                     |
| 44    | fBodyAccMeanY            | integer          | Body Acceleration Statistics for X, Y, and Z from FFT of from Inertial Signal                                                                                     |
| 45    | fBodyAccMeanZ            | integer          | Body Acceleration Statistics for X, Y, and Z from FFT of from Inertial Signal                                                                                     |
| 46    | fBodyAccStdX             | integer          | Body Acceleration Statistics for X, Y, and Z from FFT of from Inertial Signal                                                                                     |
| 47    | fBodyAccStdY             | integer          | Body Acceleration Statistics for X, Y, and Z from FFT of from Inertial Signal                                                                                     |
| 48    | fBodyAccStdZ             | integer          | Body Acceleration Statistics for X, Y, and Z from FFT of from Inertial Signal                                                                                     |
| 49    | fBodyAccJerkMeanX        | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 50    | fBodyAccJerkMeanY        | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 51    | fBodyAccJerkMeanZ        | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 52    | fBodyAccJerkStdX         | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 53    | fBodyAccJerkStdY         | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 54    | fBodyAccJerkStdZ         | integer          | Calculated by time derivative Jerk Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 55    | fBodyGyroMeanX           | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 56    | fBodyGyroMeanY           | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 57    | fBodyGyroMeanZ           | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 58    | fBodyGyroStdX            | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 59    | fBodyGyroStdY            | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 60    | fBodyGyroStdZ            | integer          | Calculated by time derivative Gyro Signal Statistics for X, Y, and Z (FFT of Inertial Signal)                                                                     |
| 61    | fBodyAccMagMean          | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |
| 62    | fBodyAccMagStd           | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |
| 63    | fBodyBodyAccJerkMagMean  | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |
| 64    | fBodyBodyAccJerkMagStd   | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |
| 65    | fBodyBodyGyroMagMean     | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |
| 66    | fBodyBodyGyroMagStd      | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |
| 67    | fBodyBodyGyroJerkMagMean | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |
| 68    | fBodyBodyGyroJerkMagStd  | integer          | Calculated by euclidean norm 3D Signal-component Statistics for X, Y, and Z (from FFT)                                                                             |


## Description of raw data used:
The raw file description and use is the following:
* __X_train.txt__ and __X_test.txt__: Located in train and test subfolders respectively. Were imported and constitute the bulk of the raw datasets.
* __y_train.txt__ and __y_test.txt__: Located in train and test subfolders respectively. Represented the experimental subject for each raw data set. These were added as an extra column to the raw datasets.
* __features.txt__: used to name columns imported from the X_train.txt and X_test.txt files.
* __activity_labels.txt__: Located in the main data directory. Was used extract the labels for the levels of the activityID column in the dataset.
* The entire contents of the "__Inertial Signals__" folders was ignored. The reason is that the information contained in them was used to generate by means of Fourier Transform (FFT) some of the data in the X_train.txt and X_test.txt files, hence importing these data would constitute redundancy of information.

## Transformations
### Step 1. Read two raw data and "merge" data sets.
The function readData(dataDir, dataSet) was created to read each dataset separatelly X_train.txt and X_test.txt. This function incorporated the variable names from features.txt and the respective subject IDs from y_train.txt and y_test.txt.
readData was called twice, and the rows from the two raw data sets were merged using *rbind*.

### Step 2. Subset pertinent columns
The grep() function was used to extract columns with pattern containing the keywords "mean" and "std", which represents the columms containing for mean and standard deviations in the dataset. The columns containing the "meanFreq" keyword were ignored, because although they represent a mean, this mean refers to the frequency data that was used in the FFT calculations and would have been redundant. Averaging the frequency also removes its intrinsic value.

### Step 3. Label the activity column with factor levels
The *activityID* column in the subset data set was converted into categorical using the factor() function. In the same function call, the labels for the factors was inserted. These labels were previously read from the *activity_labels.txt* file.

### Step 4. Clean up column (variable) names for readibility
The variable names were edited to match the "camel casing" convention for variable names. To achieve this, the gsub() function was used to: a) remove all dots (.), and b) convert the words "means" and "std" to start with capital letters.

### Step 5. Summarize (means by activity and subject) into tidy dataset
This step required loading the *reshape2 library*. The data set was melt (using *melt()*) into a tall dataset by means of subject and activity ID. Then it was summarized into means of every variable (per subject and activity) using the *cast()* function.

Finally, the tidy data set was saved (using write.table) into a text file: __tidyDataset.txt__.