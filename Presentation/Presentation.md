# Presentation
Kevin Cannon  
November 1, 2016  



# Introduction
The purpose of this project is to explore Gross Domestic Product data from countries around the world in comparison with educational data.

# Data
The data used for this analysis was downloaded from the worldbank online databank which can be found here: http://databank.worldbank.org/data/home.aspx

# Files
This code, written in R, will download two raw CSV files from worldbank and create an additional CSV file that contains merged data for analysis.

# Questions on Merged Data 
1. How many of the IDs match from the GDP and Education data sets?  
2. What is the 13th country in the data frame sorted in ascending order?  
3. What are the average GDP rankings for the "High income: OECD" and "High income: nonOECD" groups?  
4. Plot the GDP for all of the countries.  
5. How many countries are lower middle income but among the 38 nations with highest GDP?

# Make File
This make file contains the code to gather, clean, and analyze the data.
*Note: Set working directory to match the repository cloned from GitHub or the new location of the Case Study files. An example directory is given below.

```r
setwd("D:\\My Documents\\GitHub\\Case_Study_1\\")
source("makefile.R")
```

```
## Loading required package: gdata
```

```
## gdata: read.xls support for 'XLS' (Excel 97-2004) files ENABLED.
```

```
## 
```

```
## gdata: read.xls support for 'XLSX' (Excel 2007+) files ENABLED.
```

```
## 
## Attaching package: 'gdata'
```

```
## The following object is masked from 'package:stats':
## 
##     nobs
```

```
## The following object is masked from 'package:utils':
## 
##     object.size
```

```
## The following object is masked from 'package:base':
## 
##     startsWith
```

```
## Loading required package: plyr
```

```
## Warning: NAs introduced by coercion
```

# Conclusion
The analysis conducted on the GDP of countries in relation to education yielded answers to all of the questions listed above. The largest differences between countries in GDP occur at the top of the GDP rankings, as most of the lower ranked countries have very similar GDPs. In fact, the income group under which a country falls does not directly relate to its GDP, as evidenced by all income groups being represented near the top of the rankings.
