getwd()
setwd("./ExplorativeDataAnalysis/Exercises")


# Read data ---------------------------------------------------------------

my_txt_data <- read.table("../Data/TN_Datensatz_beide_Kurse.txt")
koerpergroesse <- my_txt_data$Koerpergroesse
schuhgroesse <- my_txt_data$Schuhgroesse
haarlaenge <- my_txt_data$Haarlaenge
augenfarbe <- my_txt_data$Augenfarbe
haarfarbe <- my_txt_data$Haarfarbe
geschlecht <- my_txt_data$Geschlecht
statistiknote <- my_txt_data$Statistiknote

niederschlag <- c(56.8, 32.4, 88.9, 129.2, 27.2, 19.8, 41.3, 40.7, 85.7, 71.4, 36.3, 55.2)
temperatur <- c(18.5, 20.9, 16.7, 12.3, 9.3, 1.7, 0.5, 0.7, 1.7, 5.2, 8.5, 14.4)
monat <- month.abb[c(8:1,12:9)]


# Barplot ----------------------------------------------------------------

#erstellt Balkendiagramme
#Monatsabkürzungen werden als Namen zugewiesen
names(niederschlag) <- monat 
#Achsenbeschriftung horizontal: las = 1
barplot(niederschlag, col="blue", ylab="Niederschlag / mm", las=1)


# Histogram, distribution and transformation ---------------------------------------------------------------

#plottet das Histogramm einer Verteilung
hist(koerpergroesse)
#Die Verteilung ist linksschief. mean < median
#Es gibt keine symmetrische Verteilung
#Es gibt ein Maximum bei 175 – 180cm, ein Minimum bei 160-165cm

#density
#ermittelt die Dichtefunktion einer Verteilung
plot(density(koerpergroesse))

#transformations
#Logarithmus zur Basis 10 (log10)
hist(log10(koerpergroesse)) #leichte Linksverschiebung, Bestärkung des Linksschiefe
#natürlicher Logarithmus (log)
hist(log(koerpergroesse)) #2 Gipfel
#Quadratwurzel (sqrt)
hist(sqrt(koerpergroesse)) #Deutlicher Unterschied beim rechten Teil des Histogramms (stärkerer Abfall), nahezu normalverteilt, aber noch linksschief
#Quadrieren(^2)
hist((koerpergroesse)^2) #nahezu normalverteilt, aber leichte Linksschiefe
summary(sqrt(koerpergroesse))
quantile(koerpergroesse)
#0%  25%  50%  75% 100% 
#160  170  175  179  185 
mean(koerpergroesse)
#174.7826
#median = 50% quantile
median(koerpergroesse)
#175
table(koerpergroesse)
#modus = 170

#z-transformartion
#sd=1, mean=0
koerpergroesse_z <- (koerpergroesse-mean(koerpergroesse))/sd(koerpergroesse) #manuell
koerpergroesse_z <- scale(koerpergroesse) #mit function scale()


# Boxplot -----------------------------------------------------------------

#erstellt Box Whisker Plots
boxplot(koerpergroesse, range=0)
#formula koerpergroesse~geschlecht
boxplot(koerpergroesse~geschlecht, range=0)
boxplot(koerpergroesse~geschlecht, range=0, notch=TRUE, border="red", horizontal=TRUE)


# Recab -------------------------------------------------------------------

plot(schuhgroesse, haarlaenge, xlab = "Schuhgröße / Pariser Stich", ylab ="Haarlänge / cm", col=ifelse(augenfarbe=="braun","brown",ifelse(augenfarbe=="gruen","green","blue")))
text(schuhgroesse, haarlaenge, labels=ifelse(is.na(statistiknote),"NA",statistiknote), pos=4, adj=0)
