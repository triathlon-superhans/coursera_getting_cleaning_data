#   run_analysis.R
#   
####

# Load the libraries
library(data.table)
library(plyr)
library(dplyr)

# STEP1 - MERGE THE DATA SETS
# In case you need to test the script, i would recommend to download 
# and extract the script to a directory on your PC and store the path into the workdir variable in the script.
# workdir <- "Your directory"


workdir <- "C:/Users/Hans/Documents/R/Coursera/data-cleaning/Assignement/UCI HAR Dataset" 
getwd(workdir)

#Create the raw training data-sets
subjecttrain <- read.table("train/subject_train.txt", header = FALSE)
activitytrain <- read.table("train/y_train.txt", header = FALSE)
featurestrain <- read.table("train/X_train.txt", header = FALSE)

