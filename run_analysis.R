#Read text files in data frames.
activityLabels = read.csv("data/activity_labels.txt", header = F, sep = " ", col.names = c("activityid", "activityname"))
features = read.csv("data/features.txt", header = F, sep = " ", col.names = c("featureid", "featurename"))
subjectTest = read.csv("data/test/subject_test.txt", header = F, sep = " ", col.names = c("subject"))
yTest = read.csv("data/test/y_test.txt", header = F, sep = " ", col.names = "activity", colClasses = "factor")
#Set buffer size to 200 to avoid an out of memory error while reading the data. 
xTest = read.fwf("data/test/x_test.txt", header = F, widths = rep(16, 561), buffersize = 200, colClasses = "numeric")
subjectTrain = read.csv("data/train/subject_train.txt", header = F, sep = " ", col.names = c("subject"))
yTrain = read.csv("data/train/y_train.txt", header = F, sep = " ", col.names = "activity", colClasses = "factor")
#Set buffer size to 200 to avoid an out of memory error while reading the data. 
xTrain = read.fwf("data/train/x_train.txt", header = F, widths = rep(16, 561), buffersize = 200, colClasses = "numeric")

#Replaces activities "Ids" by its names.
levels(yTest$activity) = activityLabels$activityname
levels(yTrain$activity) = activityLabels$activityname

#Finds the indices and names for measurements that represent means or standard deviations.
meanAndStdVariableIndices = grepl(".*mean|.*std", features$featurename)
meanAndStdVariableNames = features$featurename[meanAndStdVariableIndices]

#Creates a data frame merging activities, subjects and measurements for tests.
test = xTest[, meanAndStdVariableIndices]
colnames(test) = meanAndStdVariableNames
test = cbind(subjectTest, test)
test = cbind(yTest, test)

#Creates a data frame merging activities, subjects and measurements for trainings.
train = xTrain[, meanAndStdVariableIndices]
colnames(train) = meanAndStdVariableNames
train = cbind(subjectTrain, train)
train = cbind(yTrain, train)

#Merges test and training data.
testAndTrainData = rbind(test, train)

#Creates a data frame with the measurements means grouped by activity and subject.
library(dplyr)
testAndTrainForActivityAndSubjectData = group_by(testAndTrainData, activity, subject)
testAndTrainForActivityAndSubjectData = summarise_each(testAndTrainForActivityAndSubjectData, funs(mean))

#Creates a CSV file with testAndTrainForActivityAndSubjectData.
write.table(testAndTrainForActivityAndSubjectData, "testAndTrainForActivityAndSubjectData.txt", row.name=FALSE, sep = ";")