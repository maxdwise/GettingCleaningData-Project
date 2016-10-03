#X_test
#columns 8976 / 16 chars per value = 561 values
#rows 2947

setwd("H:/coursera/Data Science Specialization/Getting and Cleaning Data/course project/UCI HAR Dataset")
X_test = read.table("test/X_test.txt",header=FALSE)
Y_test = read.table("test/y_test.txt",header=FALSE)
X_train = read.table("train/X_train.txt",header=FALSE)
Y_train = read.table("train/y_train.txt",header=FALSE)

features = read.table("features.txt",header=FALSE)

activity_labels = read.table("activity_labels.txt",header=FALSE)

subject_test = read.table("test/subject_test.txt",header=FALSE)
subject_train= read.table("train/subject_train.txt",header=FALSE)

#Combine the test and training sets - using same order (1) test (2) train
X = rbind(X_test,X_train)
Y = rbind(Y_test,Y_train)
subject = rbind(subject_test,subject_train)
dim(X)
dim(Y)
dim(subject)

#Add column names to the X dataset using the feature names
#clean up feature names by removing parentheses
features$V2 = sub('(','', features$V2, fixed=TRUE)
features$V2 = sub(')','', features$V2, fixed=TRUE)
colnames(X) <- features$V2 ### remove parentheses

#Merge activity labels to the Y dataset
Y = data.frame(Y,order = c(1:dim(Y)[1]))
Y = merge(Y,activity_labels,by.x="V1",by.y="V1",sort=FALSE)
Y = Y[order(Y$order),c("V1","V2")]
colnames(Y)=c("Activity_ID","Activity")


### Create new dataset to combine each piece of information
#Indexes of features representing mean and standard deviations
#only keep these features from the X dataset
index.mean = grep("mean", tolower(features$V2) , ignore.case=FALSE, fixed=TRUE)
index.std = grep("std", tolower(features$V2) , ignore.case=FALSE, fixed=TRUE)

colnames(subject)=c("Subject_ID")

#Combine column of subject ID numbers, Y activity codes, activity labels and desired features from X
mydata = data.frame(subject,  Y, X[,c(index.mean,index.std)])
dim(mydata)
head(colnames(mydata))

#Create a second tidy dataset with the average of each variable for
#each activity and each subject

mydata.averages <- aggregate(mydata[,4:89],list(mydata$Subject_ID,mydata$Activity),mean)
names(mydata.averages)[1:2]=c("Subject_ID","Activity")

write.table(mydata.averages,file="H:/coursera/Data Science Specialization/Getting and Cleaning Data/course project/ActivityAverages.txt",row.name=FALSE)
