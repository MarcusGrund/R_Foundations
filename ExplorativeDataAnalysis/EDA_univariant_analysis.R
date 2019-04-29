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

# Reading in data ---------------------------------------------------------
getwd()
setwd("./ExplorativeDataAnalysis/Data")

bike_buyers = read.csv("bike_buyers.csv")

#install.packages("dplyr")
library(dplyr)
#remove column ID
bike_buyers = select(bike_buyers, -ï..ID)
summary(bike_buyers)

#central tendency
summary(bike_buyers$Income)
boxplot(bike_buyers$Income)

#spread
hist(bike_buyers$Income)
plot(density(bike_buyers$Income), main="Income Density Spread")

#Education: categorical, so it's discrete
summary(bike_buyers$Education)
plot(bike_buyers$Education)

#Marital.Status: categorical, discrete
summary(bike_buyers$Marital.Status)
plot(bike_buyers$Marital.Status)
pie(table(bike_buyers$Marital.Status), main="Married vs single customers")

#Children
summary(bike_buyers$Children)
plot(bike_buyers$Children)
#is it the right data type? We want more of a count for each number of children
#so make to factor
bike_buyers$Children = factor(bike_buyers$Children)
summary(bike_buyers$Children)
plot(bike_buyers$Children, xlab="Num. of children", ylab="Frequency")
#what about those who bought a bike, especially?
library(dplyr)
bought = filter(bike_buyers, Purchased.Bike== "Yes")
plot(bought$Children, xlab="Num. of children", ylab="Frequency", main="Purchased bikes yes, num. children")

#what is the most common commute distance? Visualize it!
summary(bike_buyers$Commute.Distance)
plot(bike_buyers$Commute.Distance)

#did more people buy a bike or not buy bikes? Visualize it!
summary(bike_buyers$Purchased.Bike)
plot(bike_buyers$Purchased.Bike)
pie(table(bike_buyers$Purchased.Bike), main="Bike vs no bike")

