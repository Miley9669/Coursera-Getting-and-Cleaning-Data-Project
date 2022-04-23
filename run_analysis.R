library(dplyr)

#Read in the test and train datasets that include the response variable and the predictors
x_test <- read.table("X_test.txt", header = FALSE)
y_test <- read.table("y_test.txt", header = FALSE)
x_train <- read.table("X_train.txt", header = FALSE) 
y_train <- read.table("y_train.txt", header = FALSE)

#Read in the indicators for which subject each row in the test and train datasets refer to
subject_train <- read.table("subject_train.txt", header = FALSE) 
subject_test <- read.table("subject_test.txt", header = FALSE)

#Read in the explanatory features that give the names for the columns in the x_test and x_train datasets
features <- read.table("features.txt", header = FALSE) #features are the explanatory variables

#Read in the table that maps numerical response variable to the qualitative variable, e.g., walking, sitting, etc.
labels <- read.table("activity_labels.txt", header = FALSE) 

#Renaming columns
colnames(x_train) <- features[,2]
colnames(y_train) <- "activityID"
colnames(x_test) <- features[,2]
colnames(y_test) <- "activityID"
colnames(subject_train) <- "subjectID"
colnames(subject_test) <- "subjectID"
colnames(labels) <- c("activityID", "activityType")

#Merging response, predictor variables and ID for the subject observed in each row
m_train <- cbind(y_train, subject_train, x_train)
m_test <- cbind(y_test, subject_test, x_test)

#Merge test and train dataset
m_data <- rbind(m_train, m_test)

#Pull out the names of the columns so that we can filter down to mean and SD columsn
colnames_data <- colnames(m_data)

#Subsetting to mean and SD columns
stats_data <- (grepl("activityID" , colnames_data) | grepl("subjectID" , colnames_data) | grepl("mean.." , colnames_data) | grepl("std.." , colnames_data)) & !grepl("meanFreq", colnames_data)   
subset_data <- m_data[ ,stats_data]

#Adding the the description for each response type (the "activityType" column)
m_activity <- merge(subset_data, labels, by="activityID", all.x=TRUE)

#Create tidy dataset that has a single row for each subject ("Subject ID") observed and response variable ("activityType")
grouped_data<-group_by(m_activity, subjectID, activityID,activityType)
tidy_data<-data.frame(summarize_all(grouped_data, mean ))

#saving the data
write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
