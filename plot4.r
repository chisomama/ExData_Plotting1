
source('~/Coursera/Explore_coursework_1.R') # This loads the data



png(filename = "plot4.png")
par(mfrow = c(2,2))
plot(powerdata$Time, powerdata$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power")
plot(powerdata$Time, powerdata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

with(powerdata, plot(Time, Sub_metering_1, type = "l", col = "black", ylab = "Energy Sub Metering"))
  lines(powerdata$Time, powerdata$Sub_metering_2, col = "red")
  lines(powerdata$Time, powerdata$Sub_metering_3, col = "blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red","blue"), lty  = c(1,1,1),bty = "n", y.intersp = 0.75)
  
  plot(powerdata$Time, powerdata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
  
  dev.off()