getwd()
setwd("./ExplorativeDataAnalysis/Exercises")

my_txt_data <- read.table("../Data/TN_Datensatz_beide_Kurse.txt")
koerpergroesse <- my_txt_data$Koerpergroesse
schuhgroesse <- my_txt_data$Schuhgroesse
haarlaenge <- my_txt_data$Haarlaenge
augenfarbe <- my_txt_data$Augenfarbe
haarfarbe <- my_txt_data$Haarfarbe
geschlecht <- my_txt_data$Geschlecht
statistiknote <- my_txt_data$Statistiknote

#scatterplot
plot(koerpergroesse, schugroesse, xlab="Körpergröße [cm]", ylab="Schuhgröße [Pariser Stich]", main="Verhältnis der Körper und Schuhgröße")

niederschlag <- c(56.8, 32.4, 88.9, 129.2, 27.2, 19.8, 41.3, 40.7, 85.7, 71.4, 36.3, 55.2)
temperatur <- c(18.5, 20.9, 16.7, 12.3, 9.3, 1.7, 0.5, 0.7, 1.7, 5.2, 8.5, 14.4)
monat <- month.abb[c(8:1,12:9)]

#xaxt legt den x-Achsen Typ fest
plot(1:12, niederschlag, xaxt="n", xlab="Monat", ylab="Niederschlag / mm")
axis(side=1, at=1:12, labels=monat)

plot(1:12, niederschlag, type="l") #type="l": durgezogene Linie
plot(1:12, niederschlag, type="b") #type="b": durgezogene Linie, die die Punkte aus der Tabelle verbindet
plot(1:12, niederschlag, type="c") #type="c": Linie mit Lücken bei den Monaten
plot(1:12, niederschlag, type="o") #type="o": durchgezogene Linie, Monate werden mit Kreisen gekennzeichnet
plot(1:12, niederschlag, type="h") #type="h": horizontales Balkendiagramm
plot(1:12, niederschlag, type="n") #type="n": keine Darstellung

par(mar=c(5,4,4,4)+0.5)
plot(1:12, niederschlag, type="h", col=4, ylim=c (0,130), xaxt="n", xlab="Monat",
      ylab="Niederschlag / mm", main="Nürnberg") # 'main' definiert den Titel
axis(1, 1:12, monat)
points(1:12, niederschlag, col=4)
lines(1:12, temperatur*2, type = "o", pch= 21, bg="red", col="red")
axis(4, seq (0, 120, 20), seq (0, 60, 10))
mtext(4, text="Temperatur / °C", line=2.5) # 'line' definiert den Abstand der Beschriftung zur Achse
text(x=4, y=niederschlag[4], labels=paste(max(niederschlag), "mm"), pos=4, adj=0)

#identify (x=1:12, y=niederschlag, labels=niederschlag, pos=1)

#'cex' legt die Symbolgröße fest
plot(koerpergroesse, schuhgroesse, cex=3)
plot(koerpergroesse, schuhgroesse, cex=5)

plot(koerpergroesse, schuhgroesse, xlab="Körpergröße / cm", ylab="Schuhgröße / Pariser Stich", cex = haarlaenge*0.1)

plot(1:25, 1:25, cex=2, pch=1:25, col="darkblue")
par(bg="black")
plot(koerpergroesse, schuhgroesse, pch=19, cex=2, col=colors()[c(260:361,653:657)])
plot(1:25, 1:25, cex=2, pch=1:25, col="blue", bg="red")

plot(koerpergroesse, schuhgroesse, xlab="Körpergröße /
#x11() öffnet externes Graphic Fenster
x11() cm", ylab="Schuhgröße / Pariser Stich", cex = haarlaenge*0.1)

plot(schuhgroesse, koerpergroesse, col=ifelse(geschlecht == 'w','red','blue'), xlab="Körpergröße / cm", ylab="Schuhgröße / Pariser Stich")

#Liniendicke und Art der Linie (durchgezogen, gestrichelt, etc.)
#Dicke: lwd=
#Art: lty=

#gefüllte Punkte, bei denen die Umrandung blau und die Füllung rot ist.
#pch=21, bg=“red“, col=“blue“

#jeden zweiten Buchstaben des Alphabets (B, D, F, ...)
LETTERS[seq(2,26,2)]


