#R script corresponding to Getting and Cleaning Data, Week 4

library(dplyr)

#Assumption: The working directory contains UCI HAR Dataset

#READING TRAIN:
#I read the training set and store'em in train
train <- read.table("UCI HAR Dataset/train/X_train.txt")
#I read the activity labels for the training set and store'em in l_train
act_train <- read.table("UCI HAR Dataset/train/y_train.txt")
#I read the subjects for the training set and store'em in s_train
s_train <- read.table("UCI HAR Dataset/train/subject_train.txt")

#READING TEST:
#I read the test set and store in test
test <- read.table("UCI HAR Dataset/test/X_test.txt")
#I read the activity labels for the test set and store'em in l_test
act_test <- read.table("UCI HAR Dataset/test/y_test.txt")
#I read the subjects for the test set and store'em in s_test
s_test <- read.table("UCI HAR Dataset/test/subject_test.txt")

#MERGING:
#I merge train and test. This corresponds to the 1st step of the assignment.
data_merge <- rbind(train,test)

#I read the activiy names and store'em in act_names
act_names <- read.table("UCI HAR Dataset/activity_labels.txt")

#I read the features and store'em in f
f <- read.table("UCI HAR Dataset/features.txt")

#I find the list of features with the words "mean" or "std"
#In the case of mean, I chose all features with "mean" instead of just "mean()", since all of them represent averages
f_mean <- grep("mean",as.character(f$V2))
f_std <- grep("std",as.character(f$V2))

#I then select the variables with the word "mean" or "std". This corresponds to the 2nd step of the assignment.
data <- select(data_merge,c(names(test)[f_mean],names(test)[f_std]))

#Now I merge the activiy labels and subjects
act <- rbind(act_train,act_test)
subjects <- rbind(s_train,s_test)

#I replace the values of the activities (1,2,3...) by proper ones (WALKING...). This corresponds to the 3rd step
for(i in 1:dim(act)[1]) {act[act == i] <- as.character(act_names$V2[i])}

#I replace the original names, (V1, V2, etc.) by more descriptive ones (tBodyAcc-mean()-X, tBodyAcc-mean()-Y, etc.)
#By convenience I get rid of the parenthesis and transform the hyphens into underscores
names(data) <- gsub("\\(","",gsub("\\)","",gsub("-","_",c(as.character(f$V2[f_mean]),as.character(f$V2[f_std])))))

#I add the columns with the subjects and activities to data. This is the data frame after steps 1-4
data <- cbind(subject = subjects$V1 , activity = act$V1, data)

#This is the final data set: I group data by subject and activity and then compute the mean of each column for each
#value of subject (1, 2, 3,...) and activity (WALKING, WALKING DOWNSTAIRS...)
data5 <- data %>% group_by(subject,activity) %>% summarize_at(names(data)[3:dim(data)[2]],.funs = mean)