# Script to generate all the plots and data.

library(reshape)
library(ggplot2)
powerhead = read.table("household_power_consumption.txt", nrows = 1, sep = ";", stringsAsFactors = FALSE)
powerdata = read.table("household_power_consumption.txt", skip = 66637, nrows = 2882, sep = ";")
colnames(powerdata) = unlist(powerhead)
powerdata$Date = as.Date(powerdata$Date, format = "%d/%m/%Y")
powerdata$Time = strptime(paste(powerdata$Date,powerdata$Time), format = "%Y-%m-%d %H:%M:%S")

