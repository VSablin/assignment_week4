In this codebook you can find all the information regarding the magnitudes computed in the tidy data frame.

## General information

The variables in this data set come from the accelerometer and gyroscope 3-axial raw signals tAcc_XYZ and tGyro_XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc_XYZ and tGravityAcc_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk_XYZ and tBodyGyroJerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc_XYZ, fBodyAccJerk_XYZ, fBodyGyro_XYZ, fBodyBodyAccJerkMag, fBodyBodyGyroMag, fBodyBodyGyroJerkMag (note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: XYZ is used to denote 3-axial signals in the X, Y and, Z directions.

All the variables are normalized and bounded within [-1,1]

## Variables

In each column, we have the mean value of the following variables for each pair of values of subject (1, 2, 3, ..., 30) and activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING):


tBodyAcc_mean/std_XYZ<br/>
tGravityAcc_mean/std_XYZ<br/>
tBodyAccJerk_mean/std_XYZ<br/>
tBodyGyro_mean/std_XYZ<br/>
tBodyGyroJerk_mean/std_XYZ<br/>
tBodyAccMag_mean/std<br/>
tGravityAccMag_mean/std<br/>
tBodyAccJerkMag_mean/std<br/>
tBodyGyroMag_mean/std<br/>
tBodyGyroJerkMag_mean/std<br/>
fBodyAcc_mean/std_XYZ<br/>
fBodyAcc_meanfreq_XYZ<br/>
fBodyAccJerk_mean_XYZ<br/>
fBodyAccJerk_meanfreq_XYZ<br/>
fBodyGyro_mean/std_XYZ<br/>
fBodyGyro_meanfreq_XYZ<br/>
fBodyAccMag_mean/std<br/>
fBodyAccMag_meanfreq<br/>
fBodyBodyAccJerkMag_mean/std<br/>
fBodyBodyAccJerkMag_meanFreq<br/>
fBodyBodyGyroMag_mean/std<br/>
fBodyBodyGyroMag_meanFreq<br/>
fBodyBodyGyroJerkMag_mean/std<br/>
angletBodyAccMean,gravity<br/>
angletBodyAccJerkMean,gravityMean<br/>
angletBodyGyroMean,gravityMean<br/>
angletBodyGyroJerkMean,gravityMean<br/>
angleXYZ,gravityMean

The set of variables that were estimated from these signals are: 

mean: Mean value<br/>
std: Standard deviation<br/>
meanFreq: Weighted average of the frequency components to obtain a mean frequency<br/>

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean<br/>
tBodyAccMean<br/>
tBodyAccJerkMean<br/>
tBodyGyroMean<br/>
tBodyGyroJerkMean
