  #   run_analysis.R
  #   Version 0.0 - Draft version - not ready yet.....
  #   Created by Hans Schoonen
  ####
  ##################################################################################################
  
  rm(list=ls())
  
  # Load the libraries
  
  library(plyr)
  library(dplyr)
  
  #================================================================================================
  #STEP1 - MERGE THE DATA SETS
  # In case you need to test the script, i would recommend to download 
  # and extract the script to a directory on your PC and store the path into the workdir variable.
  # workdir <- "Your directory"
  #================================================================================================
  
  workdir <- "C:/Users/Hans/Documents/R/Coursera/data-cleaning/Assignement/UCI HAR Dataset" 
  setwd(workdir)
  
  #Create the raw training and test data-sets
  strain <- read.table("train/subject_train.txt", header = FALSE)
  xtrain <- read.table("train/y_train.txt", header = FALSE)
  ytrain <- read.table("train/X_train.txt", header = FALSE)
  stest <- read.table("test/subject_test.txt", header = FALSE)
  ytest <- read.table("test/y_test.txt", header = FALSE)
  xtest <- read.table("test/X_test.txt", header = FALSE)
  
  featuress <- read.table("features.txt")
  labels <- read.table("activity_labels.txt", header = FALSE)
  
  # merge
ymerged <- merge(xtrain, xtest, all=TRUE)
xmerged <- merge(ytrain, ytest, all=TRUE)
smerged <- merge(xtrain, ytest, all=TRUE)   
  
  
  
  
  
  
