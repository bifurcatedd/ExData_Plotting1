##Plot 3
library(datasets)
with(hpc, plot(x=date, y=subm1, type = "l"), ylab = "Energy sub metering", main = "")

#Adding additional lines
lines(hpc$date, hpc$subm2, col ="red")
lines(hpc$date, hpc$subm3, col ="blue")

#legend

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1)

#adding to png

dev.copy(png, file = "plot3.png")
dev.off()