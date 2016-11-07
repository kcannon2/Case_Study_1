# Code Purpose: To merge the two cleaned data sets for analysis

# Must have the EducationData and GDPData data frames cleaned in the environment before merging the data
# Merge data sets based on country code
MergedData <- merge(x=GDPData, y=EducationData, by="CountryCode", all=FALSE)

# Save merged data set
write.csv(MergedData,"MergedData.csv")