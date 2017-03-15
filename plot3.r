
source('~/Coursera/Explore_coursework_1.R') # This loads the data

# plot 3
png(filename = "plot3.png")
with(powerdata, plot(Time, Sub_metering_1, type = "l", col = "black", ylab = "Energy Sub Metering"))
lines(powerdata$Time, powerdata$Sub_metering_2, col = "red")
lines(powerdata$Time, powerdata$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red","blue"), lty = c(1,1,1))
dev.off()