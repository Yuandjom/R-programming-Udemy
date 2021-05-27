#check the current working directory first 
getwd()
setwd("C:\\Users\\ziyan\\OneDrive\\Desktop\\R programming A-Z Udemy\\Data Frames")
#import the excel csv files into R
stats <- read.csv("HomeworkData.csv")
#check for first 6 elements
head(stats)

#Create a new data frame from the given R vectors 
df <- data.frame(Country = Country_Code, LifeExpectancy1960 = Life_Expectancy_At_Birth_1960,
                 LifeExpectancy2013= Life_Expectancy_At_Birth_2013)
df

#merge the files
MergedFile <- merge(stats, df , by.x = "Country.Code", by.y = "Country")
MergedFile
head(MergedFile)

#plot the graph out 
qplot(data = MergedFile, x= Fertility.Rate, y = LifeExpectancy1960, colour = Region
      , shape = I(23), size= I(5))

