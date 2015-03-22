#reading data
activity_labels <- read.table('activity_labels.txt')
test_labels <- read.table('test\\y_test.txt')
train_labels <- read.table('train\\y_train.txt')
test_set <- read.table('test\\x_test.txt')
train_set <- read.table('train\\x_train.txt')
subject_test <- read.table('test\\subject_test.txt')
subject_train <- read.table('train\\subject_train.txt')

features <- read.table('features.txt')

#Merges the training and the test sets to create one data set.
subjects <- rbind(subject_train, subject_test)
labels <- rbind(train_labels, test_labels)

merge_set <- rbind(train_set, test_set) #10299 rows / 563 columns

#select only mean/std features -- Extracts only the measurements on the mean and standard deviation for each measurement. -- the filtered features on column V1 are the indexes for the dataset above.. and the names on V2 are the desired column names
filteredFeatures <- features[grep("((m|M)ean)|std", features$V2),] #86 rows
filteredFeatures$V1 <- paste("V", filteredFeatures$V1, sep="")
filteredSet <- merge_set[, which(names(merge_set) %in% filteredFeatures$V1)]

#Appropriately labels the data set with descriptive variable names.
colnames(filteredSet) <- filteredFeatures$V2
filteredSet <- cbind(labels, filteredSet)
filteredSet <- cbind(subjects, filteredSet)
colnames(filteredSet)[1] <- "Subject"
colnames(filteredSet)[2] <- "Activity"

#Uses descriptive activity names to name the activities in the data set -- needs to be done
filteredSet$Activity <- activity_labels[filteredSet$Activity,]$V2

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidySet <- aggregate(filteredSet[,3:dim(filteredSet)[2]], list(Subject = filteredSet$Subject, Activity = filteredSet$Activity), mean)

write.table(tidySet, "tidy_data.txt", row.names = FALSE)