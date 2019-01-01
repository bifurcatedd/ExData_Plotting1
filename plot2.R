##Plot 2
library(datasets)
plot(hpc$date, hpc$activepower, type ="l", xlab = "", ylab = "Global Active Power (kilowatts)", col ="gray27")
dev.copy(png, file = "plot2.png")
dev.off()