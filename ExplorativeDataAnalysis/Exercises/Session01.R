getwd()
setwd("./ExplorativeDataAnalysis/Exercises")

x <- c(2, 5, 10, 14, 3, 1, 18, 24, 17) 
a <- c("text", 2, 6, TRUE)
mode(x)
mode(a)

#numeric vectors can be calculated
sum(x)
mean(x)
min(x)
max(x)
quantile(x)

#number of elements
length(x)
x_sorted_increasing <- sort(x)
x_sorted_decreasing <- sort(x, decreasing = TRUE)
x = x+10
y <- c(1, 3, 2) 
x # Länge des Vektors: 9
y # Länge des Vektors: 3
z = x+y # Funktioniert, weil 9 ein Vielfaches von 3 ist.

#3  4  5  6  7  8  9 10
3:10

#1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0
seq(from = 1,to = 6,by = 0.5)

#1.000000 1.555556 2.111111 2.666667 3.222222 3.777778 4.333333 4.888889 5.444444 6.000000
seq(from = 1, to = 6, length.out = 10)

my_txt_data = read.table("../Data/TN_Datensatz_beide_Kurse.txt")
Koerpergroesse = my_txt_data$Koerpergroesse
mode(Koerpergroesse)
quantile(Koerpergroesse,0.1)
quantile(Koerpergroesse,0.5)
quantile(Koerpergroesse,0.9)
max(Koerpergroesse)
min(Koerpergroesse)

#1 3 9 1 3 9 1 3 9 1 3 9 1 3 9 1 3 9 1 3 9 1 3 9 1 3 9 1 3 9
rep(c (1, 3, 9), times=10)

#1 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 3 9 9 9 9 9 9 9 9 9 9
rep(c (1, 3, 9), each=10)

#1  2  3  4  5  6  7  8  9 10 10  9  8  7  6  5  4  3  2  1
a <- 1:10
b <- 10:1
v <- c(a,b)

#0.00 0.15 0.30 0.45 0.60 0.75 0.90 1.05 1.20 1.35 1.50
seq(0,1.5,0.15)

#A A A 1 1 1 B B B X X X 2 2 2 C C C 3 3 3
rep(c("A",1,"B","X",2,"C",3), each=3)

#60 181 173
Koerpergroesse[c(1,3,4)]

#2  5 10  1  3  2
z <- c(x[1:3],y[1:3])

#0 0 0 0 0 0 0 0 0 0
z <- numeric(10)

#0  0 94  0  0  0  0  0  0  0
z[3] <- sum(x)

sum(138:379)

hist(Koerpergroesse)
boxplot(Koerpergroesse)

#Augenfarbe, Haarfarbe, Geschlecht: Nominalskala
#Statistiknote: Intervallskala
#Körpergröße, Schuhgröße, Haarlänge: Rationalskala
#Für alle Variablen der Rationalskala darf ein Mittelwert gebildet werden.

