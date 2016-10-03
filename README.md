# README.md
## Getting and Cleaning Data - Course Project
## Description of run_analysis.r script file

# Steps in the run_analysis.r script:
1. Read X and Y test and training data downloaded from UCI ML repository.
2. Read additional label files for: features, activities, and subject IDs.
3. Combine (concatenate) the test and training sets of each type, taking care to do so in the same order
4. Add feature names to X data: first we have to remove the parenthesis from feature names,
  then they can be used as column names
5. Merge activity labels to the Y dataset
6. Combine the subject IDs, Y data (activity) and columns from X data referring to mean or standard deviations
  This is the final mydata dataset.
7. Use aggregate function to calculate the mean of each mean or standard deviation column by the combinations of
  subject ID and activity. This is the mydata.averages dataset.
8. Output mydata.averages to a text file "ActivityAverages.txt" using write.table with row.name=FALSE.
