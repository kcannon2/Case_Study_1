# Read in merged data set from CSV file
setwd("D:\\My Documents\\GitHub\\Case_Study_1\\Data\\")
MergedData <- read.csv("MergedData.csv", stringsAsFactors = FALSE, header = TRUE)

# Answer questions based on the merged data
# Question 1: How many of the IDs match for the country shortcode?
# Count merged rows
nrow(MergedData)
# 188 country shortcode IDs match between the cleaned Education and GDP data sets

# Question 2: Sort the data frame in ascending order by GDP. What is the 13th country?
# Sort GDP variable in ascending order
AscendOrderByGDP <- MergedData[order(MergedData$GDP),]
AscendOrderByGDP[13,3]
# The 13th country is St. Kitts and Nevis

# Question 3: What are the average GDP rankings for the "High Income: OECD" and "High Income: nonOECD" groups?
# Check for outliers
unique(MergedData$IncomeGroup)

# Subset GDP rankings for "High income: OECD" then average
HighIncomeOECD <- subset(MergedData, IncomeGroup == "High income: OECD")
mean(HighIncomeOECD$Rank)
# The average GDP rankings for the "High Income: OECD" = 34.07

# Subset GDP rankings for "High income:nonOECD" then average
HighIncomeNonOECD <- subset(MergedData, IncomeGroup == "High income: nonOECD")
mean(HighIncomeNonOECD$Rank)
# The average GDP rankings for the "High Income: nonOECD" = 91.91

# Question 4: Plot GDP for all countries. Use ggplot2 to color plot by Income Group
ggplot(MergedData, aes(x=CountryCode, y=GDP)) + geom_point(aes(color=IncomeGroup))

# Question 5: Cut GDP into 5 quartiles. Make a table versus Income Group. How many countries are lower middle income but among the 38 nations with highest GDP?
# Divide data in quantiles
GDPquantiles <- quantile(AscendOrderByGDP$Rank, na.rm=TRUE)
# Create new table with two variables
RankTable <- table(AscendOrderByGDP$Rank, AscendOrderByGDP$IncomeGroup)
# Count countries that fit criteria
sum(RankTable[1:38,5])
# Eleven countries are lower middle income among the top 38 in GDP

