getting_cleaning_peer
=====================

Assignment for getting and cleaning data class, Coursera.

This repo contains files in support of completion of the peer programming assessment for the April 2014 session of Getting and Cleaning Data.

The script, run_analysis.R, is to be executed in a folder which contains [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) which was originally sourced from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The script combines the training and testing datasets into one dataset containing only the mean and standard deviations from the original dataset. It then extracts from that combined dataset a tidy dataset containing only the averages of the extracted data, grouped by test subject and activity. The script also generates a markdown snippet used to create the codebook file.

The codebook.md file describes more fully the variables contained within the dataset in addition to assumptions used in the creation.
