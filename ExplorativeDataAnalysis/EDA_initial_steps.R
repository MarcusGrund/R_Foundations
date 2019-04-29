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
