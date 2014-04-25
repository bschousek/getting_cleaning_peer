This file documents the dataset contained within tidy.csv, which is an output from run_analysis.R contained in this repository.

The tidy dataset is composed of averages of the means and standard deviations of 86 variables plus subject ID and activity ID extracted from the [UCI Machine Learning Repository Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) dataset. The averages were taken across subgroups split by test subject and activity after the test and training datasets were combined. 

Names for the variable columns were extracted from the features.txt file and modified to be suitable for data frame names. Columns indicating the test subject ID and activity ID were added to the datasets from subject_.\*txt and y_\*.text files before merging. The activity ID numerical column was converted to descriptive names using the activity_labels.txt file.

Assumptions made in the course of processing the dataset to meet the assignment requirements include:

* Of the 561 variables contained in the original dataset, those containing the substrings "Mean", "mean" or "std" are the variables of interest. It is apparent from the online discussion forums that many have taken a more restrictive view and have only included those variables *ending* in mean() and std(), but as long as I document this assumption I feel within the bounds of the assignment.
* It is not important for the tidy dataset to indicate whether a particular line of data came from the training or test dataset
* The names encoded in the original data source are sufficiently descriptive to not require clarification
* The data in the X_test.txt and X_train.txt files represents a more processed version of the data in the Intertial Signals folders, so the data in the Inertial Signals folder is not considered in this analysis


The names of the 86 extracted means and standard deviations had to be slightly modified from the original names since they contained characters which R does not accept in column names. The mapping from original to modified variable names are as shown in the table below.

Index|Original Index|Original Name|Tidy Name
:--------------|:-------------|:---------|:-----------
Descriptive Activity Name|from y_test.txt or y_train.txt|mapping from numeric to label from activity_labels.txt|activity
Subject ID|from subject_test.txt or subject_train.txt|NA|subject
1|1|tBodyAcc-mean()-X|tBodyAcc.mean.X
2|2|tBodyAcc-mean()-Y|tBodyAcc.mean.Y
3|3|tBodyAcc-mean()-Z|tBodyAcc.mean.Z
4|4|tBodyAcc-std()-X|tBodyAcc.std.X
5|5|tBodyAcc-std()-Y|tBodyAcc.std.Y
6|6|tBodyAcc-std()-Z|tBodyAcc.std.Z
7|41|tGravityAcc-mean()-X|tGravityAcc.mean.X
8|42|tGravityAcc-mean()-Y|tGravityAcc.mean.Y
9|43|tGravityAcc-mean()-Z|tGravityAcc.mean.Z
10|44|tGravityAcc-std()-X|tGravityAcc.std.X
11|45|tGravityAcc-std()-Y|tGravityAcc.std.Y
12|46|tGravityAcc-std()-Z|tGravityAcc.std.Z
13|81|tBodyAccJerk-mean()-X|tBodyAccJerk.mean.X
14|82|tBodyAccJerk-mean()-Y|tBodyAccJerk.mean.Y
15|83|tBodyAccJerk-mean()-Z|tBodyAccJerk.mean.Z
16|84|tBodyAccJerk-std()-X|tBodyAccJerk.std.X
17|85|tBodyAccJerk-std()-Y|tBodyAccJerk.std.Y
18|86|tBodyAccJerk-std()-Z|tBodyAccJerk.std.Z
19|121|tBodyGyro-mean()-X|tBodyGyro.mean.X
20|122|tBodyGyro-mean()-Y|tBodyGyro.mean.Y
21|123|tBodyGyro-mean()-Z|tBodyGyro.mean.Z
22|124|tBodyGyro-std()-X|tBodyGyro.std.X
23|125|tBodyGyro-std()-Y|tBodyGyro.std.Y
24|126|tBodyGyro-std()-Z|tBodyGyro.std.Z
25|161|tBodyGyroJerk-mean()-X|tBodyGyroJerk.mean.X
26|162|tBodyGyroJerk-mean()-Y|tBodyGyroJerk.mean.Y
27|163|tBodyGyroJerk-mean()-Z|tBodyGyroJerk.mean.Z
28|164|tBodyGyroJerk-std()-X|tBodyGyroJerk.std.X
29|165|tBodyGyroJerk-std()-Y|tBodyGyroJerk.std.Y
30|166|tBodyGyroJerk-std()-Z|tBodyGyroJerk.std.Z
31|201|tBodyAccMag-mean()|tBodyAccMag.mean.
32|202|tBodyAccMag-std()|tBodyAccMag.std.
33|214|tGravityAccMag-mean()|tGravityAccMag.mean.
34|215|tGravityAccMag-std()|tGravityAccMag.std.
35|227|tBodyAccJerkMag-mean()|tBodyAccJerkMag.mean.
36|228|tBodyAccJerkMag-std()|tBodyAccJerkMag.std.
37|240|tBodyGyroMag-mean()|tBodyGyroMag.mean.
38|241|tBodyGyroMag-std()|tBodyGyroMag.std.
39|253|tBodyGyroJerkMag-mean()|tBodyGyroJerkMag.mean.
40|254|tBodyGyroJerkMag-std()|tBodyGyroJerkMag.std.
41|266|fBodyAcc-mean()-X|fBodyAcc.mean.X
42|267|fBodyAcc-mean()-Y|fBodyAcc.mean.Y
43|268|fBodyAcc-mean()-Z|fBodyAcc.mean.Z
44|269|fBodyAcc-std()-X|fBodyAcc.std.X
45|270|fBodyAcc-std()-Y|fBodyAcc.std.Y
46|271|fBodyAcc-std()-Z|fBodyAcc.std.Z
47|294|fBodyAcc-meanFreq()-X|fBodyAcc.meanFreq.X
48|295|fBodyAcc-meanFreq()-Y|fBodyAcc.meanFreq.Y
49|296|fBodyAcc-meanFreq()-Z|fBodyAcc.meanFreq.Z
50|345|fBodyAccJerk-mean()-X|fBodyAccJerk.mean.X
51|346|fBodyAccJerk-mean()-Y|fBodyAccJerk.mean.Y
52|347|fBodyAccJerk-mean()-Z|fBodyAccJerk.mean.Z
53|348|fBodyAccJerk-std()-X|fBodyAccJerk.std.X
54|349|fBodyAccJerk-std()-Y|fBodyAccJerk.std.Y
55|350|fBodyAccJerk-std()-Z|fBodyAccJerk.std.Z
56|373|fBodyAccJerk-meanFreq()-X|fBodyAccJerk.meanFreq.X
57|374|fBodyAccJerk-meanFreq()-Y|fBodyAccJerk.meanFreq.Y
58|375|fBodyAccJerk-meanFreq()-Z|fBodyAccJerk.meanFreq.Z
59|424|fBodyGyro-mean()-X|fBodyGyro.mean.X
60|425|fBodyGyro-mean()-Y|fBodyGyro.mean.Y
61|426|fBodyGyro-mean()-Z|fBodyGyro.mean.Z
62|427|fBodyGyro-std()-X|fBodyGyro.std.X
63|428|fBodyGyro-std()-Y|fBodyGyro.std.Y
64|429|fBodyGyro-std()-Z|fBodyGyro.std.Z
65|452|fBodyGyro-meanFreq()-X|fBodyGyro.meanFreq.X
66|453|fBodyGyro-meanFreq()-Y|fBodyGyro.meanFreq.Y
67|454|fBodyGyro-meanFreq()-Z|fBodyGyro.meanFreq.Z
68|503|fBodyAccMag-mean()|fBodyAccMag.mean.
69|504|fBodyAccMag-std()|fBodyAccMag.std.
70|513|fBodyAccMag-meanFreq()|fBodyAccMag.meanFreq.
71|516|fBodyBodyAccJerkMag-mean()|fBodyBodyAccJerkMag.mean.
72|517|fBodyBodyAccJerkMag-std()|fBodyBodyAccJerkMag.std.
73|526|fBodyBodyAccJerkMag-meanFreq()|fBodyBodyAccJerkMag.meanFreq.
74|529|fBodyBodyGyroMag-mean()|fBodyBodyGyroMag.mean.
75|530|fBodyBodyGyroMag-std()|fBodyBodyGyroMag.std.
76|539|fBodyBodyGyroMag-meanFreq()|fBodyBodyGyroMag.meanFreq.
77|542|fBodyBodyGyroJerkMag-mean()|fBodyBodyGyroJerkMag.mean.
78|543|fBodyBodyGyroJerkMag-std()|fBodyBodyGyroJerkMag.std.
79|552|fBodyBodyGyroJerkMag-meanFreq()|fBodyBodyGyroJerkMag.meanFreq.
80|555|angle(tBodyAccMean,gravity)|angle.tBodyAccMean.gravity.
81|556|angle(tBodyAccJerkMean),gravityMean)|angle.tBodyAccJerkMean.gravityMean.
82|557|angle(tBodyGyroMean,gravityMean)|angle.tBodyGyroMean.gravityMean.
83|558|angle(tBodyGyroJerkMean,gravityMean)|angle.tBodyGyroJerkMean.gravityMean.
84|559|angle(X,gravityMean)|angle.X.gravityMean.
85|560|angle(Y,gravityMean)|angle.Y.gravityMean.
86|561|angle(Z,gravityMean)|angle.Z.gravityMean.
