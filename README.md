# coursera_GettingAndCleaningData_project

 Wearable computing is one of the most exciting areas in all of data science- see e. g. [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data used in this project represent the data collected from the accelerometers from the Samsung Galaxy S smartphone. The purpose of this project is to collect, work with, and clean the data set. A full description of the data set is available at the following site:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This repository contains the following files.

README.md : Describing the project and how the R scrip - run_analysis.R works and hows the files are connected <br/>
Codebook.Rmd: a code book that is used to describe the variables, the data, and any transformations or work that is performed to clean up the data <br/>
run_analysis.R: the R script that is used to clean the data <br/>
tidy.txt: the final tidy dataset <br/>

###Generating the Tid Data set
The R Script (run_analysis.R) performs the following tasks: <br/>
1. load the given data set<br/>
2. read the dataset into a data frame<br/>
3. assign meaningful column name for test and tarinnning dataset<br/>
4. merge test and trainning dataset<br/>
5. extracts only the measurements on the mean and standard deviation for each measurement <br/>
6. Uses descriptive activity names to name the activities in the data set<br/>
7. Appropriately labels the data set with descriptive variable names.<br/>
8. create an independent tidy data set (tidy.txt) with the average of each variable for each activity and each subject.<br/>
