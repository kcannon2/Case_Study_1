# Code Purpose: To clean the raw data sets in preparation for merging

# Read in data sets from CSV files
setwd("D:\\My Documents\\GitHub\\Case_Study_1\\Data\\")
GDPRaw <- read.csv("gdp.csv", stringsAsFactors = FALSE, header = TRUE)
EducationRaw <- read.csv("education.csv", stringsAsFactors = FALSE, header = TRUE)

# Explore GDPRaw data. Remove the "#" to explore 
# str(GDPRaw)

# Inspect head and tail of GDPRaw data. Remove the "#" to inspect
# head(GDPRaw,15)
# tail(GDPRaw,50)

# Begin data cleaning
# Exclude first 5 rows of data
GDPData <- GDPRaw[5:236,]

# Rename columns
names(GDPData) <- c("CountryCode","Rank","empty1","Country","GDP","Notes","empty2","empty3","empty4","empty5")

# Remove empty columns
GDPData$empty1 <- NULL
GDPData$empty2 <- NULL
GDPData$empty3 <- NULL
GDPData$empty4 <- NULL
GDPData$empty5 <- NULL

# Remove commas from numeric data
GDPData$GDP <- as.numeric(gsub(",", "", GDPData$GDP))

# Convert ranking values to integers
GDPData$Rank <- as.integer(GDPData$Rank)

# Replace blanks in data with code for counting
GDPData[GDPData==""] <- NA

# Count NA values
count(is.na(GDPData$GDP))
count(is.na(GDPData$CountryCode))
count(is.na(GDPData$Rank))

# Remove NA values from GDPData for CountryCode, GDP, and Rank columns
GDPData <- GDPData[!is.na(GDPData$CountryCode),]
GDPData <- GDPData[!is.na(GDPData$GDP),]
GDPData <- GDPData[!is.na(GDPData$Rank),]


# Explore EducationRaw data set. Remove the "#" to explore
# str(EducationRaw)

# Inspect head and tail of EducationRaw data. Remove the "#" to inspect
# head(EducationRaw,15)
# tail(EducationRaw,50)

# Begin data cleaning
# Change data set name after inspection
EducationData <- EducationRaw

# Replace blanks in data with code for counting
EducationData[EducationData==""] <- NA

# Rename column to remove period
colnames(EducationData)[colnames(EducationData)=="Income.Group"] <- "IncomeGroup"

# Count NA values
count(is.na(EducationData$CountryCode))
count(is.na(EducationData$IncomeGroup))

