# Case Study 1 Make File
# Code Purpose: Fully recreate the data set and analysis used to generate the conclusions

# Set working directory
# Note: Set working directory to match the repository cloned from GitHub or the new location of the Case Study files. An example directory is given below.
setwd("D:\\My Documents\\GitHub\\Case_Study_1\\Data\\")

# Initialize R packages
source("Initialize.R")

# Gather and clean raw data
source("GatherData.R")
source("CleanData.R")

# Merge clean data and output CSV file
source("MergeData.R")

# Analyze the merged data
setwd("D:\\My Documents\\GitHub\\Case_Study_1\\Analysis\\")
source("Analysis.R")