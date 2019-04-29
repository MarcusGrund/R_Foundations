# Examine the mulitvariate data ---------------------------------------------


# Reading in data ---------------------------------------------------------
getwd()
setwd("./ExplorativeDataAnalysis/Data")

bike_buyers = read.csv("bike_buyers.csv")

#install.packages("dplyr")
library(dplyr)
#remove column ID
bike_buyers = select(bike_buyers, -ï..ID)
summary(bike_buyers)
