This folder contains the following files:

- the main datasets found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- run_analysis.R code for computing the averages of mean and standard deviations of the features from the main data set.
- "mydata.txt" the long form of the obtained dataset
- "mydata2.txt" the wide form of the obtained dataset
- CookBook.md file provinding information for the new dataset

The following steps were taken for obtaining this data set:

1. combine data from X_test.txt and Y_test.txt (data on features)
2. combine data from X_train.txt and Y_train.txt (data on activities)
3. combine data from subject_test.txt and subject_train.txt (data on subjects)
4. select relevant feature columns for mean and stand. dev.
5. combine the datasets obtained at 1,2, and 3.
6. Compute the averages by subject and activity for the selected features of mean and stand. dev.
7. save the new dataset

