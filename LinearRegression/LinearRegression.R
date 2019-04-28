data(airquality)
names(airquality)

#[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day" 

plot(Ozone~Solar.R,data = airquality)

#calculate mean ozone concentration (na's removed)
Ozone.mean=mean(airquality$Ozone,na.rm = TRUE)
abline(h = mean.Ozone)

#us lm to fit a regression line though these data
model1=lm(Ozone~Solar.R,data = airquality)
abline(model1,col="red")

summary(model1)
