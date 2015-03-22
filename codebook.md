Code Book - Getting and Cleaning data
========================

Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Variables used and their sources:
* activity_labels: 'activity_labels.txt' file, contains the names of each activity type (6x2 size)
* test_labels: 'test\\y_test.txt' file, contains the activity type for each entry of the test data (2947x1 size)
* train_labels: 'train\\y_train.txt' file, contains the activity type for each entry of the train data (7352x1 size)
* test_set: 'test\\x_test.txt' file, contains the bulk of the test data measurements (2947x561 size)
* train_set: 'train\\x_train.txt' file, contains the bulk of the train data measurements (7352x561 size)
* subject_test: 'test\\subject_test.txt' file, contains the subjects for each of the test data entries (2947x1 size)
* subject_train: 'train\\subject_train.txt' file, contains the subjects for each of the train data entries (7352x1 size)
* features: 'features.txt' file, contains the features list (561x2 size)
* subjects: bound test+train subject data (10299x1 size)
* labels: bound test+train labels data (10299x1 size)
* merge_set: bound test+train measurement data (10299x561 size)
* filteredFeatures: features list, filtered to display only names which contain either 'std', 'mean', or 'Mean' (86x2 size)
* filteredSet: merge_set filtered by the filteredFeatures list. Activity IDs were also replaced with their names, and appropriate column names were given to all columns. (10299x88 size)
* tidySet: new data set with average of all columns on the filtered set, for each activity/subject (180x88 size)

Sample content:
* Activity Labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* Feature names: tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, etc; most measurements have values on X/Y/Z.
 
