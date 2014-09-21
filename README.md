Steps to reproduce this project
-------------------------------

Step 1:
Place the R script `run_analysis.r` in your working directory.

Step 2: 
Run the R script `run_analysis.r`. It will carry out the following steps automatically (i.e. you don't need to do anything):

1. Install and load the required R packages if they are not yet installed and loaded
2. Download and unzip the raw data if they are not downloaded or unzipped.
3. Read the relevant data from the unzipped folder. The files in the `Inertial Signals` are not required for producing tidy data for this project.
      * `features.txt`
      * `activity_labels.txt`
      * `test/subject_test.txt`
      * `test/X_test.txt`
      * `test/y_test.txt`
      * `train/subject_train.txt`
      * `train/X_train.txt`
      * `train/y_train.txt`
      * `activity_label.txt`
4. Merge all the test and train data for subject, x and y and combine them into one data set
5. Extracts only the measurements on the mean and standard deviation i.e. extract those features which contain the word mean() or std(). Note that meanfreq() is not extracted as it is different from mean(). 
6. Match the activity code in the derived data set with activity names.
7. Rename the columns of the data set with descriptive variable names. For the features columns, abbreviations such as "t" and "f" are replaced with "time" and "frequency" to make them more meaningful. The "()" and "-" are also removed. However, here I restrain from expanding the more obvious abbreviation e.g. acc so that the column names won't be too long.
8. Create a tidy data set with the average of each variable for each activity and each subject.Here the variable refers to the 66 features. 
9. Write the data to a file named `clean_data.txt` in your working directory
      

Outputs produced
----------------
* Tidy dataset file `clean_data.txt` in your working directory
* You can read the data using the following R code:
```r
dt<-read.table("clean_data.txt",header=TRUE)
> View(dt)
```
