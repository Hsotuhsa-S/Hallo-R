##################################
#library("evidence")
library("dplyr")
#library("plyr")
#library("tidyverse")
library("tibble")
#library("ggplot2")
##################################

# set working dirctory
setwd("~/Personal/02-R-Work/RProjects/GitProjects/Hallo-R")
# setwd(normalizePath("C:/Users/ashirsat/Documents/Personal/02-R-Work/DataSet"))

# Load data
artistData= read.csv("data/artist.csv")

# Load data Frame information- 
dim(artistData)
str(artistData)
summary(artistData)
names(artistData)

t = table(summarise_if(artistData, is.numeric, mean))
print(t)
class(t)

# Convert Data Frame column from character to factor.
#Method 1
data = artistData %>% 
  mutate(country = factor(country), genre = factor(genre), group = factor(group))
str(artistData)

# Post condition cleanup
rm(artistData)
artistData= read.csv("data/artist.csv")
str(artistData)

# Method 2
artistData$country = as.factor(artistData$country)
str(artistData)

# Post condition cleanup
rm(artistData)
artistData= read.csv("data/artist.csv")
str(artistData)

# Method 3
if(is.character(artistData$genre)) {
  artistData$genre = as.factor(artistData$genre)
}
str(artistData)

# Post condition cleanup
rm(artistData)
artistData= read.csv("data/artist.csv")
str(artistData)


# Method 4
if(is.character(artistData[,1])) {
  artistData[,1] = as.factor(artistData[,1])
}
str(artistData)

# Post condition cleanup
rm(artistData)
artistData= read.csv("data/artist.csv")
str(artistData)

# Method 5 
# self made function.to convert all char col to factor.
# Call function from another r script using source()
source("MyFunctions/convertDFColCharToFactor.R")
artistData = df.char.as.factor(artistData)
str(artistData)

# Convert dataframe to tibble.
as_tibble(artistData)
str(artistData)
class(artistData)
str(data)


#Load data and convert variable type from char to factor
dataExam = read.csv("Data/exams.csv", stringsAsFactors = TRUE)

# Load data Frame information- 
dim(dataExam)
str(dataExam)
summary(dataExam)
names(dataExam)
table(summarise_if(dataExam, is.numeric, sd))
table(summarise_if(dataExam, is.numeric, mean))
table(summarise_if(dataExam, is.numeric, median))

# Group by ...
by_gender = dataExam %>% group_by(gender)
summary(by_gender)
summarise(by_gender, n())
apply(dataExam, 2, length)


