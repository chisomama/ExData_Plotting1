
source('~/Coursera/Explore_coursework_1.R') # This loads the data
# plot 1
png(filename = "plot1.png")
hist(powerdata$Global_active_power, xlab = "Global Active Power (kiloWatts)", col = "red", main = "Global Active Power")
dev.off()