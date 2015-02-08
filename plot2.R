# Course: Exploratory Data Analysis / Coursera
# Project: 1 
#
# Filename: plot2.R
# created:  Feb-2015
#
Sys.setlocale("LC_TIME", "C")

source("load_data.R")
png(filename = "plot2.png", 
    width = 480, 
    height = 480, 
    units = "px", 
    bg = "transparent"
)
#
plot(subData$DateTime, 
     subData$Global_active_power, 
     type = "l", 
     xlab = "",
     ylab = "Global Active Power (kilowatts)"
)
dev.off()
