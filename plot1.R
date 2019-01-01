##Plot 1

library(datasets)


#histogram
hist(hpc$activepower, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

##Copying to PNG
dev.copy(png, file = "plot1.png")
dev.off()