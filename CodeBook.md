---
title: "Code book for Coursera Getting and Cleaning Data course project"
author: "Syed karim"
date: "March 18, 2017"
output: html_document
---
 
 #Veriables
 
 Identifiers:</br>
 1. activityID: Unique ID of the activity, ranging from integer 1 to 6 </br>
 2. subjectID: Uniqe ID of the subject, raging from integer 1 to 30</br>
 3. activity: Name of the acitivity.
 
 Measurements: </br> 
 
 for any given subject and activity, each row contains 86 differrent measurements 
 
 [1] "activityID"                          
 [2] "activity"                            
 [3] "subjectID"                           
 [4] "tBodyAcc-mean()-X"                   
 [5] "tBodyAcc-mean()-Y"                   
 [6] "tBodyAcc-mean()-Z"                   
 [7] "tGravityAcc-mean()-X"                
 [8] "tGravityAcc-mean()-Y"                
 [9] "tGravityAcc-mean()-Z"                
[10] "tBodyAccJerk-mean()-X"               
[11] "tBodyAccJerk-mean()-Y"               
[12] "tBodyAccJerk-mean()-Z"               
[13] "tBodyGyro-mean()-X"                  
[14] "tBodyGyro-mean()-Y"                  
[15] "tBodyGyro-mean()-Z"                  
[16] "tBodyGyroJerk-mean()-X"              
[17] "tBodyGyroJerk-mean()-Y"              
[18] "tBodyGyroJerk-mean()-Z"              
[19] "tBodyAccMag-mean()"                  
[20] "tGravityAccMag-mean()"               
[21] "tBodyAccJerkMag-mean()"              
[22] "tBodyGyroMag-mean()"                 
[23] "tBodyGyroJerkMag-mean()"             
[24] "fBodyAcc-mean()-X"                   
[25] "fBodyAcc-mean()-Y"                   
[26] "fBodyAcc-mean()-Z"                   
[27] "fBodyAcc-meanFreq()-X"               
[28] "fBodyAcc-meanFreq()-Y"               
[29] "fBodyAcc-meanFreq()-Z"               
[30] "fBodyAccJerk-mean()-X"               
[31] "fBodyAccJerk-mean()-Y"               
[32] "fBodyAccJerk-mean()-Z"               
[33] "fBodyAccJerk-meanFreq()-X"           
[34] "fBodyAccJerk-meanFreq()-Y"           
[35] "fBodyAccJerk-meanFreq()-Z"           
[36] "fBodyGyro-mean()-X"                  
[37] "fBodyGyro-mean()-Y"                  
[38] "fBodyGyro-mean()-Z"                  
[39] "fBodyGyro-meanFreq()-X"              
[40] "fBodyGyro-meanFreq()-Y"              
[41] "fBodyGyro-meanFreq()-Z"              
[42] "fBodyAccMag-mean()"                  
[43] "fBodyAccMag-meanFreq()"              
[44] "fBodyBodyAccJerkMag-mean()"          
[45] "fBodyBodyAccJerkMag-meanFreq()"      
[46] "fBodyBodyGyroMag-mean()"             
[47] "fBodyBodyGyroMag-meanFreq()"         
[48] "fBodyBodyGyroJerkMag-mean()"         
[49] "fBodyBodyGyroJerkMag-meanFreq()"     
[50] "angle(tBodyAccMean,gravity)"         
[51] "angle(tBodyAccJerkMean),gravityMean)"
[52] "angle(tBodyGyroMean,gravityMean)"    
[53] "angle(tBodyGyroJerkMean,gravityMean)"
[54] "angle(X,gravityMean)"                
[55] "angle(Y,gravityMean)"                
[56] "angle(Z,gravityMean)"                
[57] "tBodyAcc-std()-X"                    
[58] "tBodyAcc-std()-Y"                    
[59] "tBodyAcc-std()-Z"                    
[60] "tGravityAcc-std()-X"                 
[61] "tGravityAcc-std()-Y"                 
[62] "tGravityAcc-std()-Z"                 
[63] "tBodyAccJerk-std()-X"                
[64] "tBodyAccJerk-std()-Y"                
[65] "tBodyAccJerk-std()-Z"                
[66] "tBodyGyro-std()-X"                   
[67] "tBodyGyro-std()-Y"                   
[68] "tBodyGyro-std()-Z"                   
[69] "tBodyGyroJerk-std()-X"               
[70] "tBodyGyroJerk-std()-Y"               
[71] "tBodyGyroJerk-std()-Z"               
[72] "tBodyAccMag-std()"                   
[73] "tGravityAccMag-std()"                
[74] "tBodyAccJerkMag-std()"               
[75] "tBodyGyroMag-std()"                  
[76] "tBodyGyroJerkMag-std()"              
[77] "fBodyAcc-std()-X"                    
[78] "fBodyAcc-std()-Y"                    
[79] "fBodyAcc-std()-Z"                    
[80] "fBodyAccJerk-std()-X"                
[81] "fBodyAccJerk-std()-Y"                
[82] "fBodyAccJerk-std()-Z"                
[83] "fBodyGyro-std()-X"                   
[84] "fBodyGyro-std()-Y"                   
[85] "fBodyGyro-std()-Z"                   
[86] "fBodyAccMag-std()"                   
[87] "fBodyBodyAccJerkMag-std()"           
[88] "fBodyBodyGyroMag-std()"              
[89] "fBodyBodyGyroJerkMag-std()"    


#Transformations

1. The "activityID", "activity", "featureID", and "feature" veriable name is assigned in activity_label, and feature file that to be used in final data set. <br/>
2. The "subjectID" veriable name is assigned in subject_test and subject_train files as unique ID of each subject <br/>
3. activityID is used in y_test and y_train files as unique activity ID <br/>
4. Column is nind for each test and trainning data files <br/>
5. The training and test sets are merged to create one data set.<br/>
6. of the merged data set, the column name that contain "mean"  and/or "std" strings in it are extracted  and a new data set is created.<br/>
7. subjectID and sctivityID is assigned in the merged data set<br/>
8. activity names are extracted from activity label file and used as activity id in test and train files <br/>
9. the final data set was created with the average of each variable for each activity and each subject.<br/>
10. tidy_data.txt file is created as final tidy dataset. <br/>
