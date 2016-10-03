# CodeBook.md
## Getting and Cleaning Data - Course Project
Project uses the UCI Machine Learning repository dataset on smartphone activity recognition:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Project results in two tidy datasets:
A) [mydata]: Combined test and training datasets, only the fields representing mean or standard deviation measurements, with Subject ID and Activity ID and Activity label.
B) [mydata.averages]: Means of each measuremnt field from dataset A, by combinations for Subject ID and Activity

# Dataset A - Fields
"Subject_ID" - ID of the subject
"Activity_ID" - ID of the activity performed
"Activity" - label describing the activity performed

Remaining fields are mean or standard deviation measurements selected from the source data:
"tBodyAcc.mean.X"                    "tBodyAcc.mean.Y"                    "tBodyAcc.mean.Z"                   
"tGravityAcc.mean.X"                 "tGravityAcc.mean.Y"                 "tGravityAcc.mean.Z"                
"tBodyAccJerk.mean.X"                "tBodyAccJerk.mean.Y"                "tBodyAccJerk.mean.Z"               
"tBodyGyro.mean.X"                   "tBodyGyro.mean.Y"                   "tBodyGyro.mean.Z"                  
"tBodyGyroJerk.mean.X"               "tBodyGyroJerk.mean.Y"               "tBodyGyroJerk.mean.Z"              
"tBodyAccMag.mean"                   "tGravityAccMag.mean"                "tBodyAccJerkMag.mean"              
"tBodyGyroMag.mean"                  "tBodyGyroJerkMag.mean"              "fBodyAcc.mean.X"                   
"fBodyAcc.mean.Y"                    "fBodyAcc.mean.Z"                    "fBodyAcc.meanFreq.X"               
"fBodyAcc.meanFreq.Y"                "fBodyAcc.meanFreq.Z"                "fBodyAccJerk.mean.X"               
"fBodyAccJerk.mean.Y"                "fBodyAccJerk.mean.Z"                "fBodyAccJerk.meanFreq.X"           
"fBodyAccJerk.meanFreq.Y"            "fBodyAccJerk.meanFreq.Z"            "fBodyGyro.mean.X"                  
"fBodyGyro.mean.Y"                   "fBodyGyro.mean.Z"                   "fBodyGyro.meanFreq.X"              
"fBodyGyro.meanFreq.Y"               "fBodyGyro.meanFreq.Z"               "fBodyAccMag.mean"                  
"fBodyAccMag.meanFreq"               "fBodyBodyAccJerkMag.mean"           "fBodyBodyAccJerkMag.meanFreq"      
"fBodyBodyGyroMag.mean"              "fBodyBodyGyroMag.meanFreq"          "fBodyBodyGyroJerkMag.mean"         
"fBodyBodyGyroJerkMag.meanFreq"      "angletBodyAccMean.gravity"          "angletBodyAccJerkMean.gravityMean."
"angletBodyGyroMean.gravityMean"     "angletBodyGyroJerkMean.gravityMean" "angleX.gravityMean"                
"angleY.gravityMean"                 "angleZ.gravityMean"                 "tBodyAcc.std.X"                    
"tBodyAcc.std.Y"                     "tBodyAcc.std.Z"                     "tGravityAcc.std.X"                 
"tGravityAcc.std.Y"                  "tGravityAcc.std.Z"                  "tBodyAccJerk.std.X"                
"tBodyAccJerk.std.Y"                 "tBodyAccJerk.std.Z"                 "tBodyGyro.std.X"                   
"tBodyGyro.std.Y"                    "tBodyGyro.std.Z"                    "tBodyGyroJerk.std.X"               
"tBodyGyroJerk.std.Y"                "tBodyGyroJerk.std.Z"                "tBodyAccMag.std"                   
"tGravityAccMag.std"                 "tBodyAccJerkMag.std"                "tBodyGyroMag.std"                  
"tBodyGyroJerkMag.std"               "fBodyAcc.std.X"                     "fBodyAcc.std.Y"                    
"fBodyAcc.std.Z"                     "fBodyAccJerk.std.X"                 "fBodyAccJerk.std.Y"                
"fBodyAccJerk.std.Z"                 "fBodyGyro.std.X"                    "fBodyGyro.std.Y"                   
"fBodyGyro.std.Z"                    "fBodyAccMag.std"                    "fBodyBodyAccJerkMag.std"           
"fBodyBodyGyroMag.std"               "fBodyBodyGyroJerkMag.std"



# Dataset B - Fields
"Subject_ID" - ID of the subject
"Activity" - label describing the activity performed

Remaining fields are means of fields from dataset A, and named the same as in dataset A:
"tBodyAcc.mean.X"                    "tBodyAcc.mean.Y"                    "tBodyAcc.mean.Z"                   
"tGravityAcc.mean.X"                 "tGravityAcc.mean.Y"                 "tGravityAcc.mean.Z"                
"tBodyAccJerk.mean.X"                "tBodyAccJerk.mean.Y"                "tBodyAccJerk.mean.Z"               
"tBodyGyro.mean.X"                   "tBodyGyro.mean.Y"                   "tBodyGyro.mean.Z"                  
"tBodyGyroJerk.mean.X"               "tBodyGyroJerk.mean.Y"               "tBodyGyroJerk.mean.Z"              
"tBodyAccMag.mean"                   "tGravityAccMag.mean"                "tBodyAccJerkMag.mean"              
"tBodyGyroMag.mean"                  "tBodyGyroJerkMag.mean"              "fBodyAcc.mean.X"                   
"fBodyAcc.mean.Y"                    "fBodyAcc.mean.Z"                    "fBodyAcc.meanFreq.X"               
"fBodyAcc.meanFreq.Y"                "fBodyAcc.meanFreq.Z"                "fBodyAccJerk.mean.X"               
"fBodyAccJerk.mean.Y"                "fBodyAccJerk.mean.Z"                "fBodyAccJerk.meanFreq.X"           
"fBodyAccJerk.meanFreq.Y"            "fBodyAccJerk.meanFreq.Z"            "fBodyGyro.mean.X"                  
"fBodyGyro.mean.Y"                   "fBodyGyro.mean.Z"                   "fBodyGyro.meanFreq.X"              
"fBodyGyro.meanFreq.Y"               "fBodyGyro.meanFreq.Z"               "fBodyAccMag.mean"                  
"fBodyAccMag.meanFreq"               "fBodyBodyAccJerkMag.mean"           "fBodyBodyAccJerkMag.meanFreq"      
"fBodyBodyGyroMag.mean"              "fBodyBodyGyroMag.meanFreq"          "fBodyBodyGyroJerkMag.mean"         
"fBodyBodyGyroJerkMag.meanFreq"      "angletBodyAccMean.gravity"          "angletBodyAccJerkMean.gravityMean."
"angletBodyGyroMean.gravityMean"     "angletBodyGyroJerkMean.gravityMean" "angleX.gravityMean"                
"angleY.gravityMean"                 "angleZ.gravityMean"                 "tBodyAcc.std.X"                    
"tBodyAcc.std.Y"                     "tBodyAcc.std.Z"                     "tGravityAcc.std.X"                 
"tGravityAcc.std.Y"                  "tGravityAcc.std.Z"                  "tBodyAccJerk.std.X"                
"tBodyAccJerk.std.Y"                 "tBodyAccJerk.std.Z"                 "tBodyGyro.std.X"                   
"tBodyGyro.std.Y"                    "tBodyGyro.std.Z"                    "tBodyGyroJerk.std.X"               
"tBodyGyroJerk.std.Y"                "tBodyGyroJerk.std.Z"                "tBodyAccMag.std"                   
"tGravityAccMag.std"                 "tBodyAccJerkMag.std"                "tBodyGyroMag.std"                  
"tBodyGyroJerkMag.std"               "fBodyAcc.std.X"                     "fBodyAcc.std.Y"                    
"fBodyAcc.std.Z"                     "fBodyAccJerk.std.X"                 "fBodyAccJerk.std.Y"                
"fBodyAccJerk.std.Z"                 "fBodyGyro.std.X"                    "fBodyGyro.std.Y"                   
"fBodyGyro.std.Z"                    "fBodyAccMag.std"                    "fBodyBodyAccJerkMag.std"           
"fBodyBodyGyroMag.std"               "fBodyBodyGyroJerkMag.std"