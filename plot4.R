# Course: Exploratory Data Analysis / Coursera
# Project: 1 
#
# Filename: plot4.R
# created:  Feb-2015
#
Sys.setlocale("LC_TIME", "C")

source("./load_data.R")
png(filename = "plot4.png", 
    width = 480, 
    height = 480, 
    units = "px", 
    bg = "transparent"
)
par(mfrow = c(2, 2))
#
# Top-left
# --------
plot(subData$DateTime, 
     subData$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power"
)
#
# Top-right
# ---------
plot(subData$DateTime, 
     subData$Voltage, 
     type = "l", 
     xlab = "datetime", 
     ylab = "Voltage"
)
#
# Bottom-left
# -----------
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
# Draw legend
legend("topright", 
       bty = "n",                             # remove the border of the legend
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd = 1
)
#
# Bottom-right
# ------------
plot(subData$DateTime, 
     subData$Global_reactive_power, 
     type = "l", 
     col = "black",
     xlab = "datetime", 
     ylab = colnames(subData)[4]
)
#
dev.off()

