DATA FRAMES:

	testAndTrainData: 
		Contains the means and standard deviations of the  measurements of test and trainings, linked to the respective activity (and subject.
	testAndTrainForActivityAndSubjectData:
		Contains the means of the measurements of testAndTrainData grouped by activity and subject.

VARIABLES:

	testAndTrainData and testAndTrainForActivityAndSubjectData:
		$activity
		[1] "factor"
			Levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
		$subject
		[1] "integer"
			Subject ids (1 to 30).
		
		$`tBodyAcc-mean()-X`
		[1] "numeric"

		$`tBodyAcc-mean()-Y`
		[1] "numeric"

		$`tBodyAcc-mean()-Z`
		[1] "numeric"

		$`tBodyAcc-std()-X`
		[1] "numeric"

		$`tBodyAcc-std()-Y`
		[1] "numeric"

		$`tBodyAcc-std()-Z`
		[1] "numeric"

		$`tGravityAcc-mean()-X`
		[1] "numeric"

		$`tGravityAcc-mean()-Y`
		[1] "numeric"

		$`tGravityAcc-mean()-Z`
		[1] "numeric"

		$`tGravityAcc-std()-X`
		[1] "numeric"

		$`tGravityAcc-std()-Y`
		[1] "numeric"

		$`tGravityAcc-std()-Z`
		[1] "numeric"

		$`tBodyAccJerk-mean()-X`
		[1] "numeric"

		$`tBodyAccJerk-mean()-Y`
		[1] "numeric"

		$`tBodyAccJerk-mean()-Z`
		[1] "numeric"

		$`tBodyAccJerk-std()-X`
		[1] "numeric"

		$`tBodyAccJerk-std()-Y`
		[1] "numeric"

		$`tBodyAccJerk-std()-Z`
		[1] "numeric"

		$`tBodyGyro-mean()-X`
		[1] "numeric"

		$`tBodyGyro-mean()-Y`
		[1] "numeric"

		$`tBodyGyro-mean()-Z`
		[1] "numeric"

		$`tBodyGyro-std()-X`
		[1] "numeric"

		$`tBodyGyro-std()-Y`
		[1] "numeric"

		$`tBodyGyro-std()-Z`
		[1] "numeric"

		$`tBodyGyroJerk-mean()-X`
		[1] "numeric"

		$`tBodyGyroJerk-mean()-Y`
		[1] "numeric"

		$`tBodyGyroJerk-mean()-Z`
		[1] "numeric"

		$`tBodyGyroJerk-std()-X`
		[1] "numeric"

		$`tBodyGyroJerk-std()-Y`
		[1] "numeric"

		$`tBodyGyroJerk-std()-Z`
		[1] "numeric"

		$`tBodyAccMag-mean()`
		[1] "numeric"

		$`tBodyAccMag-std()`
		[1] "numeric"

		$`tGravityAccMag-mean()`
		[1] "numeric"

		$`tGravityAccMag-std()`
		[1] "numeric"

		$`tBodyAccJerkMag-mean()`
		[1] "numeric"

		$`tBodyAccJerkMag-std()`
		[1] "numeric"

		$`tBodyGyroMag-mean()`
		[1] "numeric"

		$`tBodyGyroMag-std()`
		[1] "numeric"

		$`tBodyGyroJerkMag-mean()`
		[1] "numeric"

		$`tBodyGyroJerkMag-std()`
		[1] "numeric"

		$`fBodyAcc-mean()-X`
		[1] "numeric"

		$`fBodyAcc-mean()-Y`
		[1] "numeric"

		$`fBodyAcc-mean()-Z`
		[1] "numeric"

		$`fBodyAcc-std()-X`
		[1] "numeric"

		$`fBodyAcc-std()-Y`
		[1] "numeric"

		$`fBodyAcc-std()-Z`
		[1] "numeric"

		$`fBodyAcc-meanFreq()-X`
		[1] "numeric"

		$`fBodyAcc-meanFreq()-Y`
		[1] "numeric"

		$`fBodyAcc-meanFreq()-Z`
		[1] "numeric"

		$`fBodyAccJerk-mean()-X`
		[1] "numeric"

		$`fBodyAccJerk-mean()-Y`
		[1] "numeric"

		$`fBodyAccJerk-mean()-Z`
		[1] "numeric"

		$`fBodyAccJerk-std()-X`
		[1] "numeric"

		$`fBodyAccJerk-std()-Y`
		[1] "numeric"

		$`fBodyAccJerk-std()-Z`
		[1] "numeric"

		$`fBodyAccJerk-meanFreq()-X`
		[1] "numeric"

		$`fBodyAccJerk-meanFreq()-Y`
		[1] "numeric"

		$`fBodyAccJerk-meanFreq()-Z`
		[1] "numeric"

		$`fBodyGyro-mean()-X`
		[1] "numeric"

		$`fBodyGyro-mean()-Y`
		[1] "numeric"

		$`fBodyGyro-mean()-Z`
		[1] "numeric"

		$`fBodyGyro-std()-X`
		[1] "numeric"

		$`fBodyGyro-std()-Y`
		[1] "numeric"

		$`fBodyGyro-std()-Z`
		[1] "numeric"

		$`fBodyGyro-meanFreq()-X`
		[1] "numeric"

		$`fBodyGyro-meanFreq()-Y`
		[1] "numeric"

		$`fBodyGyro-meanFreq()-Z`
		[1] "numeric"

		$`fBodyAccMag-mean()`
		[1] "numeric"

		$`fBodyAccMag-std()`
		[1] "numeric"

		$`fBodyAccMag-meanFreq()`
		[1] "numeric"

		$`fBodyBodyAccJerkMag-mean()`
		[1] "numeric"

		$`fBodyBodyAccJerkMag-std()`
		[1] "numeric"

		$`fBodyBodyAccJerkMag-meanFreq()`
		[1] "numeric"

		$`fBodyBodyGyroMag-mean()`
		[1] "numeric"

		$`fBodyBodyGyroMag-std()`
		[1] "numeric"

		$`fBodyBodyGyroMag-meanFreq()`
		[1] "numeric"

		$`fBodyBodyGyroJerkMag-mean()`
		[1] "numeric"

		$`fBodyBodyGyroJerkMag-std()`
		[1] "numeric"

		$`fBodyBodyGyroJerkMag-meanFreq()`
		[1] "numeric"
		
TRANSFORMATION STEPS:

	1: Download zip file for assingment (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
	2: Unzip files in "wd"/data.
	3: Load data frames for activity_labels.txt (activityLabels), features.txt (features), subject_test.txt (subjectTest), y_test.txt (yTest), X_test.txt (xTest), subject_train.txt (subjectTrain), y_train.txt (yTrain) and X_train.txt (xTrain)
	4: Transform variables yTest$activity and yTrain$activity in factors, with levels defined by activityLabels$activityName (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
	5: Creates a logical vector called meanAndStdVariableIndices indicating the indices in featues of measurements of means and standard deviations.
	6: Creates a factor vector called meanAndStdVariableNames whith names in features of measurements of means and standard deviations.
	7: Creates a data frame named test by subsetting from xTest the measurements of means and standard deviations using the logical vector created in step 5 (meanAndStdVariableIndices).
	8: Changes the names of the variables in test using the factor vector created in step 6 (meanAndStdVariableNames).
	9: Binds the subjects ids from subjectTest in test as its first column.
	10: Binds the activities from yTest in test as its first column.
	11: Creates a data frame named train by subsetting from xTrain the measurements of means and standard deviations using the logical vector created in step 5 (meanAndStdVariableIndices).
	12: Changes the names of the variables in train using the factor vector created in step 6 (meanAndStdVariableNames).
	13: Binds the subjects ids column from subjectTrain in train as its first column.
	14: Binds the activities column from yTrain in train as its first column.
	15: Creates a data frame named testAndTrainData by binding the rows of train in test.
	16: Creates a data frame named testAndTrainForActivityAndSubjectData with the measurements means of testAndTrainData grouped by activity and subject.
	17: Creates a CSV text file named testAndTrainForActivityAndSubjectData.txt with testAndTrainForActivityAndSubjectData.