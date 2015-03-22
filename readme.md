Getting and Cleaning Data - course project
=================

This is a repository for the course project source and results.
If you wish to run it yourself, download the entire repository and run the run_analysis.R file.

The run_analysis.R file works like this:
* Read all data from files using read.table
* Bind similar data together (test+train data for the various data types) - there are approx. 10299 rows
* Build the filtered feature list with only features containing either "std" or "mean" on their name - this will select 86 out of 561 features
* Filter the merge_set so we only have the 86 columns and set the appropriate column names;
* Append the labels and the subjects to the data, with the correct names;
* Replace the activity numbers with their names; at this point we have the step 4 data set;
* The last two lines are used to create a new, tidySet, using the aggregate function, which lets us run the mean function for all columns in the filteredSet from 3-88, and aggregate the results by the columns Subject and Activity. This will result in one row for each Subject (30) for each Activity (6), so 180 rows.
* The final tidy set should have 180 rows for 88 columns.

Files on the folder:
* tidy_data.txt: final data set
* untidy_data.txt: step 4 data set.