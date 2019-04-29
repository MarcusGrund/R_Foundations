# Explorative Data Analysis (EDA) -----------------------------------------
#Understand variables
#Find patterns in data
#Suggest modeling strategies

# Reading in data ---------------------------------------------------------
getwd()
setwd("./ExplorativeDataAnalysis/Data")

bike_buyers = read.csv("bike_buyers.csv")

# Get higher level overview of data ---------------------------------------
str(bike_buyers)
summary(bike_buyers)
class(bike_buyers)
View(bike_buyers)
head(bike_buyers)

#Question: do you need to adjust anything at this point?
#data types, structures of data, ...

#install.packages("dplyr")
library(dplyr)
#remove column ID
bike_buyers = select(bike_buyers, -ï..ID)
summary(bike_buyers)

# Examine the univariate data ---------------------------------------------
#univariate data = samples of one variable
#univariate data analysis isn't concerned with the 'why'. It is just to decribe the data as it is.
#discrete variables vs continuous variables
#discrete = an eample is the level of education. It has a limit set of values.
#continuous = an example is income. It can be just about any number

#two key things to discover in EDA:
#central tendency: what is a common value? what's the values around the data is centered?
#spread: how varied are the data points?

#type of graphs to use:
#box plot
#histogram
#density plot
#pie graph

#central tendency
summary(bike_buyers$Income)
boxplot(bike_buyers$Income)

#spread
hist(bike_buyers$Income)
plot(density(bike_buyers$Income), main="Income Density Spread")

summary(bike_buyers$Education)
plot(bike_buyers$Education)
