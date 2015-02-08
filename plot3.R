# Course: Exploratory Data Analysis / Coursera
# Project: 1 
#
# Filename: plot3.R
# created:  Feb-2015
#
Sys.setlocale("LC_TIME", "C")

source("load_data.R")
png(filename = "plot3.png", 
    width = 480, 
    height = 480, 
    units = "px", 
    bg = "transparent"
)
#
plot(subData$DateTime, 
     subData$Sub_metering_1,
     type = "n", 
     xlab = "", 
     ylab = "Energy sub metering"
)
#
lines(subData$DateTime, subData$Sub_metering_1, col = "black")
lines(subData$DateTime, subData$Sub_metering_2, col = "red")
lines(subData$DateTime, subData$Sub_metering_3, col = "blue")
#

legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd = 1
)
dev.off()
