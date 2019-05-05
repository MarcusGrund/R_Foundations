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


# Matrices ----------------------------------------------------------------

#matrix[row,colummn]
kursdaten_in_rows <- rbind(koerpergroesse, schuhgroesse, haarlaenge)
kursdaten_in_columns <- cbind(koerpergroesse, schuhgroesse, haarlaenge)

#t() transponiert eine Matrix und vertauscht Zeilen und Spalten
kursdaten_in_columns2 <- t(kursdaten_in_rows)
