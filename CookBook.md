
"Mydata.txt" summarizes data provided by "  Human Activity Recognition Using Smartphones Dataset". The full data sets can
be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

This dataset combines data from the train and test datasets and provides the averages for the mean and standard deviations measures of the features from
the main datasets.

The average measure is taken by ID and Activity.

The features selected in the main study are accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

The name of the variables representing the computed averages:

1. `XYZ` is used to denote 3-axial signals in the X, Y and Z directions.
2. `_(measure)` is used to denote mean or std

- tBodyAcc-(measure)-XYZ
- tGravityAcc-(measure)-XYZ
- tBodyAccJerk-(measure)-XYZ
- tBodyGyro-(measure)-XYZ
- tBodyGyroJerk-(measure)-XYZ
- tBodyAccMag-(measure)
- tGravityAccMag-(measure)
- tBodyAccJerkMag-(measure)
- tBodyGyroMag-(measure)
- tBodyGyroJerkMag-(measure)
- fBodyAcc-(measure)-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-(measure)-XYZ
- fBodyAccMag-(measure)
- fBodyAccJerkMag-(measure)
- fBodyGyroMag-(measure)
- fBodyGyroJerkMag-(measure).

Additionally this dataset contains the following.

- "ID_Subject" identifies the subject. It takes values 1 to 30.
- "Activity" identifies the activity type. It takes the following: LAYING, SITTING, STANDING,WALKING,WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
- "ID_Activity"  identifies the activity ID. It takes values 1 to 6.

The following steps were taken for obtaining this data set:

1. combine data from X_test.txt and Y_test.txt (data on features)
2. combine data from X_train.txt and Y_train.txt (data on activities)
3. combine data from subject_test.txt and subject_train.txt (data on subjects)
4. select relevant feature columns for mean and stand. dev.
5. combine the datasets obtained at 1,2, and 3.
6. Compute the averages by subject and activity for the selected features ofmean and stand. dev.
7. save the new dataset
