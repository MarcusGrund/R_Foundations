# Reading in data ---------------------------------------------------------
getwd()
setwd("./Introduction/Data")

#Types of files you can read into R:
#txt, csv, excel, json, xml, html tables, relational DB, non-relational DB, ...
#most of them need unique packages to read the data

#general call
#var_name = read_function(file, extra parameters)

# txt-files ---------------------------------------------------------------
my_txt_data = read.table("sample.txt")
# common sep values = comma (,), pipe (|) or fixed space (default)

# csv-files ---------------------------------------------------------------
my_csv_data = read.csv("sample.csv")
#read.table is more generic, you need to specify what you want it to do
my_csv_data1 = read.table("sample.csv",sep = ',')

# excel-file --------------------------------------------------------------
install.packages("XLConnect")
library(XLConnect)
wb = loadWorkbook("sample.xlsx")
my_excel_data = readWorksheet(wb, sheet = 1)
#shortcut
my_excel_data1 = readWorksheetFromFile("sample.xlsx", sheet = 1)


# json-file ---------------------------------------------------------------
library(rjson)
#...

# xml-file ----------------------------------------------------------------
library(XML)
#...


