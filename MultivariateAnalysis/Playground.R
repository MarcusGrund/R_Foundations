setwd("C:/Users/Marcus/OneDrive/Dokumente/Uni/MultivariateAnalysis")

mynames <- c("Mary", "John", "Ann", "Sinead", "Joe", "Mary", "Jim", "John", "Simon")
mytable <- table(mynames)
mytable[["John"]]

myframe<-data.frame(x = 1, y = 1:10, fac = fac)
myframe[,3]
myframe$x[3]

wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep=",")
install.packages("car")
library("car")
scatterplotMatrix(wine[2:6])
plot(wine$V4, wine$V5)
text(wine$V4, wine$V5, wine$V1, cex=0.7, pos=4, col="red")
sd(wine$V4)
summary(wine$V4)
hist(wine$V4)
install.packages("RColorBrewer")
library("RColorBrewer")
makeProfilePlot <- function(mylist,names)
{
  require(RColorBrewer)
  # find out how many variables we want to include
  numvariables <- length(mylist)
  # choose 'numvariables' random colours
  colours <- brewer.pal(numvariables,"Set1")
  # find out the minimum and maximum values of the variables:
  mymin <- 1e+20
  mymax <- 1e-20
  for (i in 1:numvariables)
  {
    vectori <- mylist[[i]]
    mini <- min(vectori)
    maxi <- max(vectori)
    if (mini < mymin) { mymin <- mini }
    if (maxi > mymax) { mymax <- maxi }
  }
  # plot the variables
  for (i in 1:numvariables)
  {
    vectori <- mylist[[i]]
    namei <- names[i]
    colouri <- colours[i]
    if (i == 1) { plot(vectori,col=colouri,type="l",ylim=c(mymin,mymax)) }
    else         { points(vectori, col=colouri,type="l")                                     }
    lastxval <- length(vectori)
    lastyval <- vectori[length(vectori)]
    text((lastxval-10),(lastyval),namei,col="black",cex=0.6)
  }
}
names <- c("V2","V3","V4","V5","V6")
mylist <- list(wine$V2,wine$V3,wine$V4,wine$V5,wine$V6)
makeProfilePlot(mylist,names)



