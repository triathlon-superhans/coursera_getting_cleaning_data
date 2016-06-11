#   run_analysis.R
#   Version 0.0 - Draft version - not ready yet.....
#   Created by Hans Schoonen
####
##################################################################################################

rm(list=ls())

# Load the libraries

library(plyr)
library(dplyr)
library(reshape2)

#================================================================================================
#STEP1 - MERGE THE DATA SETS
# In case you need to test the script, i would recommend to download 
# and extract the script to a directory on your PC and store the path into the workdir variable.
# like workdir <- "Your directory"
#================================================================================================

workdir <- "C:/Users/Hans/Documents/R/Coursera/data-cleaning/Assignement/UCI HAR Dataset" 
setwd(workdir)

#Create the raw training and test data-sets
strain <- read.table("train/subject_train.txt", header = FALSE)
ytrain <- read.table("train/y_train.txt", header = FALSE)
xtrain <- read.table("train/X_train.txt", header = FALSE)
stest <- read.table("test/subject_test.txt", header = FALSE)
ytest <- read.table("test/y_test.txt", header = FALSE)
xtest <- read.table("test/X_test.txt", header = FALSE)
features <- read.table("features.txt")
alabels <- read.table("activity_labels.txt")


xmerged <- rbind(xtest, xtrain)
names(xmerged) <- features[, 2]

ymerged <- rbind(ytest, ytrain)
ymerged <- merge(ymerged, alabels, by = 1)[, 2]

subject <- rbind(stest, strain)
names(subject) <- "subject"

data <- cbind(subject, ymerged, xmerged)
names(data)[2] <- "label"

meanstdonly <- data[, c(1, 2, grep('-mean|-std', colnames(data)))]

meanstdok = melt(meanstdonly, id.var = c("subject", "label"))
dataready = dcast(meanstdok , subject + label ~ variable, mean)
write.table(dataready, file="tidy_data.txt")
