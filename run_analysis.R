
library(reshape2)
#reading activity_lebel and feature files
activityLabels<-read.table("./Dataset/UCI HAR Dataset/activity_labels.txt")
features<-read.table("./Dataset/UCI HAR Dataset/features.txt")


#assigning meaningful name to the column names
colnames(activityLabels)<-c("activityID", "activity" )
colnames(features)<-c("featureID", "feature")


#reading subject_test and subject_train files
subjectTest<-read.table("./Dataset/UCI HAR Dataset/test/subject_test.txt")
subjectTrain<-read.table("./Dataset/UCI HAR Dataset/train/subject_train.txt")

#assigning meaningful column Names
colnames(subjectTest)<-"subjectID"
colnames(subjectTrain)<-"subjectID"

#reading X test and train dataset
xTest<-read.table("./Dataset/UCI HAR Dataset/test/X_test.txt")
xTrain<-read.table("./Dataset/UCI HAR Dataset/train/X_train.txt")

#assignning meaningful column names
colnames(xTest)<-features$feature
colnames(xTrain)<-features$feature


#reading y test dataset
yTest<-read.table("./Dataset/UCI HAR Dataset/test/y_test.txt")
yTrain<-read.table("./Dataset/UCI HAR Dataset/train/y_train.txt")

#assigning meaning column names
colnames(yTest)<-"activityID"
colnames(yTrain)<-"activityID"

#column bind all test data
testData<-cbind(subjectTest, yTest, xTest)

#column bind all train data 
trainData<-cbind(subjectTrain, yTrain, xTrain)

#row bind all test and train data
allData<-rbind(testData, trainData)


meanColumnIndex<-grep("mean", names(allData), ignore.case = T)
meanColumnName<-names(allData)[meanColumnIndex]

stdColumnIndex<-grep("std", names(allData), ignore.case = T)
stdColumnName<-names(allData)[stdColumnIndex]

allData<-allData[, c("subjectID", "activityID", meanColumnName, stdColumnName)]

#merge activity file and allData to have activity name in it
mergedData<-merge(activityLabels, allData, by.x = "activityID", by.y = "activityID", all=T)

meltData<-melt(mergedData, id=c("activityID", "activity", "subjectID"))

finalData <- dcast(meltData,activityID + activity + subjectID ~ variable, mean)

#creating a file with the new tidy dataset
write.table(finalData, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)

names(finalData)