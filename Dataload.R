library (dplyr)
## Download the Data Set

ecsurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
ecs <- "ecs. zip"
if (!file.exists(ecs)) {
    download.file(ecsurl, ecs)
}

## Unzipping the Data Set

data <- "household_power_consumption.txt"

if (!file.exists(data)) {
    unzip (ecs)
}

## Reading data

hpc <- read.table(data,  skip = 1, na.strings = "?", sep = ";", 
                  col.names = c("date", "time", "activepower", "reactivepower", "voltage", 
                                "intensity", "subm1", "subm2", "subm3"), 
                  stringsAsFactors = FALSE ) 



## Turning time and dates into "Date" class
hpc$date <- paste(hpc$date, hpc$time)
hpc$time <- NULL

hpc$date<- as.POSIXct(hpc$date, tz = "America/Los_Angeles", "%d/%m/%Y %H:%M:%S")

##Dropping unnecessary dates


hpc <- filter(hpc, hpc$date < "2007-02-03 14:00:00 " & hpc$date > "2007-02-01 14:00:00 PST")




