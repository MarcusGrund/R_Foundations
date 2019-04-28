# Data frame ------------------------------------------------------------------
#combination of multiple vectors having various data types

#numeric vector
gpa = c(1.81, 3.91, 3.45, 3.65)
gpa[1]
gpa[2:4]
str(gpa)
class(gpa)
summary(gpa)

#char vector
first_names = c("Marcus", "Paula", "Jule", "Bine")
str(first_names)
class(first_names)
summary(first_names)

#logical vector
pass = c(FALSE, TRUE, TRUE, TRUE)
str(pass)
class(pass)
summary(pass)

#factor vector
gender = c("m","f","f","f")
str(gender)
gender = factor(gender)
str(gender)
class(gender)
summary(gender)

fcolor = factor(c("blue","green","green","red"),levels = c("red", "blue", "green"))
str(fcolor)
class(fcolor)
summary(fcolor)

#create data frame
#multiple columns (=vectors) having various data types. A single column must have the same data type
data_frame = data.frame(first_names, gender, gpa, pass, fcolor, stringsAsFactors = FALSE)
data_frame
str(data_frame)
class(data_frame)
summary(data_frame)

#extracting from data frames
#data_frame[rows,columns]
#get the first, first_name
data_frame[1,1]
#get gpa of 2nd person
data_frame[2,3]
#get all the data of the last row
data_frame[4,]
#get all the gpa's
data_frame[,3]
#get Paula's and Jule's data
data_frame[2:3,]
#get Marcus' and Bine's data
data_frame[c(1,4),]
#get the names and whether they have passed
data_frame[,c(1,4)]

#conditional extraction
data_frame[which(data_frame$pass==TRUE),]
data_frame[which(data_frame$gpa>3.00),]
