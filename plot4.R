##Plot 4

par(mfrow=c(2,2))
plot(hpc$date, hpc$activepower, type ="l", xlab = "", ylab = "Global Active Power (kilowatts)", col ="black")
plot(hpc$date, hpc$voltage, type ="l", xlab = "datetime", ylab = "Voltage", col ="black")
with(hpc, plot(x=date, y=subm1, type = "l", xlab="", ylab = "Energy sub metering", ,  main = ""))

#Adding additional lines
lines(hpc$date, hpc$subm2, col ="red")
lines(hpc$date, hpc$subm3, col ="blue")

#legend

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lwd = 1, bty = "n", cex = 0.75)
plot(hpc$date, hpc$reactivepower, xlab="datetime", ylab = "Global_reactive_power", type = "l")

#adding to png

dev.copy(png, file = "plot4.png")
dev.off()