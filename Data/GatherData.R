# Code Purpose: To gather the raw data from the worldbank databank to use for analysis

# Download GDP data and save CSV file
setwd("D:\\My Documents\\GitHub\\Case_Study_1\\Data\\")
link <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download(link, destfile="D:\\My Documents\\GitHub\\Case_Study_1\\Data\\gdp.csv")
GDPRaw <- read.csv("gdp.csv", stringsAsFactors = FALSE, header = TRUE)

# Download Education data and save as CSV file
link <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download(link, destfile="D:\\My Documents\\GitHub\\Case_Study_1\\Data\\education.csv")
EducationRaw <- read.csv("education.csv", stringsAsFactors = FALSE, header = TRUE)