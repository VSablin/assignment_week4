# Assignment corresponding to Week 4 of Gettind and Cleaning Data

In this repo you can find the script (run_analysis.R) and the tidy data frame (tidy_data_frame.csv) corresponding to the assignment of Getting and Cleaning Data: Week 4. Besides, you can find all the data necessary to run the script. In the following, the script is explained. Besides, I explain first how to run it and finally I describe the data files included in the repo.

## TO DO

You should just download the repo and put the (uncompressed) data folder and the script in the same directory.

## SCRIPT

The script reads all the data (see data section).

It then merges the train and test sets, which corresponds to the first step of the assignment.

It finds those names in features.txt (see data section) with the word "mean" or "std" (standard deviation). I chose "mean" instead of "mean()". As explained in features_info.txt, those variable with "mean" without the parenthesis are also average values.

It selects the columns of the merged data with "mean" or "std" in their names. This corresponds to the second step.

It replaces the activity labels from y_train.txt and y_test.txt by the activity names stored in activity_labels.txt (see data section). This corresponds to the third step.

It chooses descriptive names for the variables. I took the names appearing in features.txt (see data section). As both parenthesis and hyphens are conflictive characters, I got rid of the first and replaced the second by underscores. This corresponds to the fourth step.

I finally compute the mean of each variable for each subject and activity by means of group_by and summarize_at. I used summarize_at insted of summarize because the latter allows me to use the names of the data frame as an argument for the columns I want to compute the average of.

## DATA

All data are in the folder UCI HAR Dataset. It contains:

### TRAIN:
All the following files are in the dir "train".<br/>
X_train.txt: Train set <br/>
y_train.txt: Activity labels for the train set <br/>
subject_train.txt: Subjects for the train set

### TEST:
All the following files are in the dir "test".<br/>
X_test.txt: Test set <br/>
y_test.txt: Activity labels for the test set <br/>
subject_test.txt: Subjects for the test set

### AUXILIARY FILES:
These files are in the main dir.<br/>
activity_labels.txt: Table with the activity name corresponding to each label <br/>
features.txt: Variable names of the train and test set
features_info.txt: Information of features.txt. This is not used in the script, but it is convenient.
README.txt: Original readme file by the Human Activity Recognition Using Smartphones Dataset with slight modifications.
