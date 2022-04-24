# Coursera-Getting-and-Cleaning-Data-Project

### The purpose of this project is to organize a series of test/train datasets and create a tidy summary dataset that finds the mean for a given subject & response for each of the mean/standard deviation columns in the dataset. The datasets used are described below as well as the steps for creating the tidy dataset.


##### Datasets 

* X_train: Contains the values for the predictor variables (i.e., features) for each observation of the train dataset. Table has 7352 observations and 561 variables. The variables aren't given descriptive names in the table which is why this table is joined to the features table.
* X_test: Contains the values for the predictor variables (i.e., features) for each observation of the test dataset. Table has 7352 observations and 561 variables. The variables aren't given descriptive names in the table which is why this table is joined to the features table.
* Y_train: Contains the value of the response variable for the train dataset. The response variable here is an integer response where the descriptive response feature has been coded as an integer response. This table is joined to the Labels table in order to give a descriptive value for each response level.
* Y_test: Contains the value of the response variable for the test dataset. The response variable here is an integer response where the descriptive response feature has been coded as an integer response. This table is joined to the Labels table in order to give a descriptive value for each response level.
* Subject_train: Contains the subject, i.e., a specific person who was wearing the device, that each of the observations was gathered from for the train dataset.
* Subject_test: Contains the subject, i.e., a specific person who was wearing the device, that each of the observations was gathered from for the test dataset.
* Features: Gives a description for each of the 561 predictor variables.
* Activity_labels: Contains a mapping of the descriptive variables levels to an integer value. Joining this table to the x/y datasets gives the descriptive responses for each observation.


##### Steps for creating the tidy dataset

1. Read all of the datasets into R
2. Rename columns to descriptive titles
3. Merge the 3 train datasets into a single table; merge the 3 test datasets into a single table
4. Merge the combined train and test datasets into a single table
5. Subset the data so that it only includes columns that have mean and standard deviation values
6. Attach the descriptions of the response variable to the dataset
7. Calculate the mean value for each of the columns grouped by the specific subject and response variable
8. Export the tidy dataset to a .txt file 
