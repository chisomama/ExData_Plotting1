# plot 2
source('~/Coursera/Explore_coursework_1.R') # This loads the data


png(filename = "plot2.png")
plot(powerdata$Time, powerdata$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")
dev.off()