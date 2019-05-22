## Peer Graded Assignment: Getting and Cleaning Data

This repo contains the peer-graded course project for the Getting and Cleaning Data Course.
The assignment tidied data from a UCI Machine Learning experiment that tried to identify human activity from Samsung Smartphones.
More information about the experiment, data collected, and methodolody can be found [here](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The repo contains the following files:
- **CodeBook.md:** Describes the variables, the data, and transformations performed to clean data
- **run_analysis.R:** An R script used to tidy the data set
- **tidy.txt:** A sample of the text file obtained after saving the results of the script to a table


## run_analysis.R
This script does the following:
- Downloads the dataset if it does not already exist in the working directory
- Loads the activity classifications and features analyzed
- Loads the subjects analyzed, features recorded, and results obtained for both training and test sets
- Includes only mean/standard deviation features
- Merges the training and test sets
- Gives descriptive variable names to all the columns
- Groups the set by activity type and subject analyzed
- Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair
- Writes the data to a file called TidyData.txt into your working directory

NOTE: The script will conduct all downloading, zipping, and file saving in your computer's working directory.