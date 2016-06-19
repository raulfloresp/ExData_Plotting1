# SCRIPT STARTS HERE
## TThis assignment uses data from the UC Irvine Machine Learning Repository, 
## a popular repository for machine learning datasets. 
## In particular, we will be using the "Individual household electric power consumption Data Set" 
##
# A. DATA PREPARATION
### A.1 Use the "download.file()" function to download source dataset file
url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fileUrl <- file.path("./coursera/data2", "power_consumption.zip")
download.file(url, fileUrl)
##
### A.2 Unzip and list the downloaded files

unzip(zipfile = "./coursera/data2/power_consumption.zip", exdir = "./coursera/data2")

## Once unzipped, a TXT "household_power_consumption" file should be created
## A.3 LOADING THE DATA
data<-read.table("./coursera/data2/household_power_consumption.txt",header = TRUE, sep= ";")
##
## Now we´ll explore the data we just loaded, including looking at the attributes
head(data)
dim()
names(data)
lapply(data, class)
## After reading class of data we found there are several "factor" classes
## Let´s have a look to part od the Data & Time variables
data$Date[1:20]
data$Time[1:20]
##
## PREPARING THE DATA
##
## You may find it useful to convert the Date and Time variables to Date/Time classes in R 
## using the strptime() and as.Date() functions.
##
## Now we will use the strptime() function to change the factor Date and Time 
## values in to yyyy-mm-dd hh:mm:ss. 
## First, let's create a variables by concatenating Date and Time.
##
data$DateTime<-paste(data$Date, data$Time)
##
## Then, let's chnage DateTime to yyyy-mm-dd hh:mm:ss
##
data$DateTime<-strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
## 
## We will only be using data from the dates 2007-02-01 and 2007-02-02. 
## One alternative is to read the data from just those dates rather than reading 
## in the entire dataset and subsetting to those dates.
## 
from <- which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
to <- which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
reduceddata<-data[from:to,]
##
## End of Script