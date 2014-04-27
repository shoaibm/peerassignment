Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person 
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear 
acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label 
the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was 
selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in 
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has 
gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and 
gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff 
frequency was used. From each window, a vector of features was obtained by calculating variables from the time and 
frequency domain. 

The dataset includes the following files,
- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

Data set variable Descripton

For each participant, there are several things being measured along the XYZ axes,
- Angular Velocity, Acceleration, Maginutude, Angle along with some derived values,
e.g. Jerk is derived from Acceleration and Angular Velocity
- tBodyAcc-XYZ | tGravityAcc-XYZ | tBodyAccJerk-XYZ | tBodyGyro-XYZ
- tBodyGyroJerk-XYZ | tBodyAccMag | tGravityAccMag | tBodyAccJerkMag
- tBodyGyroMag | tBodyGyroJerkMag | fBodyAcc-XYZ | fBodyAccJerk-XYZ
- fBodyGyro-XYZ | fBodyAccMag | fBodyAccJerkMag
- fBodyGyroMag | fBodyGyroJerkMag |
- Using, the Euclidean norm, the magnitude of the inputs listed above were calculated
- The variable have a time (prefix t) and frequency (prefix f) domain component.
- Variables are normalized and bounded within [-1,1]
- These signals were used to estimate statistical variables [mean, std deviation, min, max
,skew, kurtosis etc.] for each of the feature vector pattern: '-XYZ' is used to denote 3
axial signals in the X, Y and Z directions.
- A listing of the statistical variables created is described under the file "FeatureInfo"
- A complete list of the 561 variables is available in the file "Features.txt"
