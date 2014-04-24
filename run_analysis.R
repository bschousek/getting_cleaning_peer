library(plyr)
data.rootpath<-"UCI HAR Dataset"

#activity.labels maps data rows to activity labels (eg 1 <- WALKING)
#Here we load this as a factor
infile.activity.factors<-read.table(file.path(data.rootpath,"activity_labels.txt"))
f.activity<-factor(infile.activity.factors$V2)

#features.txt gives names for each of the data columns
# some of those names contain characters (parenthesis for example)
# not suitable for column names, so make.names is called to strip them out.
#Finally since the plethora of . symbols left after make.names doesn't
# look very attractive, a quick regex substition turns all multiple dots into
# single dots
infile.variables<-read.table(file.path(data.rootpath,"features.txt"))
variable.names<-make.names(infile.variables$V2,unique=TRUE) 
variable.names<-sub("\\.{2,}","\\.",variable.names)

#Now search for only those columns which report mean and
# standard deviation of variables.
# Any variable names containing the strings ".mean" or "Mean"
#  or ".std" are assumed to be the variables of interest
interesting.columns<-sort(c(grep("Mean",variable.names),
							grep("\\.mean",variable.names),
							grep("\\.std",variable.names)))

#Create test and train data frames with subject and acivity columns

# first create the test data
raw.test.data<-read.table(file.path(data.rootpath,"test","X_test.txt"))
test.data<-raw.test.data[interesting.columns]
names(test.data)<-variable.names[interesting.columns]
#  ...add the subject list
test.subject.data<-read.table(file.path(data.rootpath,"test","subject_test.txt"))
test.data$subject=test.subject.data$V1
#  ...add the activity data as a factor column
test.activity.data<-read.table(file.path(data.rootpath,"test","y_test.txt"))
test.data$activity=as.factor(test.activity.data$V1)
levels(test.data$activity)<-levels(f.activity)

# Next create the training data
raw.train.data<-read.table(file.path(data.rootpath,"train","X_train.txt"))
train.data<-raw.train.data[interesting.columns]
names(train.data)<-variable.names[interesting.columns]
#  ...add the subject list
train.subject.data<-read.table(file.path(data.rootpath,"train","subject_train.txt"))
train.data$subject=train.subject.data$V1
#  ...add the activity data as a factor column
train.activity.data<-read.table(file.path(data.rootpath,"train","y_train.txt"))
train.data$activity=as.factor(train.activity.data$V1)
levels(train.data$activity)<-levels(f.activity)

# Finally combine the two datasets together
cong.data<-rbind(test.data,train.data)

# And create a second independent tidy dataset with the average of each
#  variable for each activity and each subject.
tidy<-ddply(cong.data,.(activity,subject),numcolwise(mean))