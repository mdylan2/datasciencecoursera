# NOTE: This function does all the calculation in your working directory. User should ensure to set the working
# directory correctly beforehand. 

# Loading dplyr library
library(dplyr)

# Download and unzip the data if it doesn't already exist
filename <- "data.zip"

if (!file.exists(filename)) {
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL,filename,method='curl')
}

if (!file.exists("UCI Har Dataset")) {
  unzip("data.zip")
}


# Extracting Features and Activity Labels 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityCode","Activity"))
features <- read.table("./UCI HAR Dataset/features.txt", col.names = c('FeatureNumber',"FeatureName"))

# Extracting Test Data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features$FeatureName)
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "ActivityCode")

# Extracting Train Data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features$FeatureName)
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "ActivityCode")

# Binding Subject, Y and X rows
subject <- rbind(subject_train,subject_test)
Y <- rbind(Y_train,Y_test)
X <- rbind(X_train,X_test)

# Selecting only the desired mean/std columns for X
X <- X[,grepl("[Mm]ean|[Ss]td",colnames(X))]

 
# Merging Subject, Y and X into one dataset
tidy_set <- cbind(subject,Y,X)

# Renaming Y activity codes into activity labels
tidy_set$ActivityCode <- activity_labels[tidy_set$ActivityCode,2]

# Editing Variable Names
names(tidy_set) <- gsub("Acc", "Accelerometer",names(tidy_set))
names(tidy_set) <- gsub("Gyro", "Gyroscope",names(tidy_set))
names(tidy_set) <- gsub("Mag", "Magnitude", names(tidy_set))
names(tidy_set) <- gsub("^t", "Time", names(tidy_set))
names(tidy_set) <- gsub("^f","Force", names(tidy_set))
names(tidy_set) <- gsub("mean","Mean", names(tidy_set))
names(tidy_set) <- gsub("std","STD", names(tidy_set))
names(tidy_set) <- gsub("[.]","", names(tidy_set))
names(tidy_set) <- gsub("Freq","Frequency", names(tidy_set))
names(tidy_set)[1] <- "Subject"
names(tidy_set)[2] <- "Activity"
names(tidy_set) <- gsub("X","_X", names(tidy_set))
names(tidy_set) <- gsub("Y","_Y", names(tidy_set))
names(tidy_set) <- gsub("Z","_Z", names(tidy_set))
names(tidy_set) <- gsub("angle","Angle", names(tidy_set))
names(tidy_set) <- gsub("gravity","Gravity", names(tidy_set))

# Grouping and Summarizing Data
independent_set <- tidy_set %>% group_by(Subject,Activity) %>% summarize_all(funs(mean))

# Writing the table to a file called TidyData.txt. This will appear in your working directory
write.table(independent_set,"TidyData.txt",row.names = FALSE)