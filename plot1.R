# Course: Exploratory Data Analysis / Coursera
# Project: 1 
#
# Filename: plot1.R
# created:  Feb-2015
#
source("load_data.R")
png(filename = "plot1.png", 
    width = 480, 
    height = 480, 
    units = "px", 
    bg = "transparent"
)
#
hist(subData$Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200)
)
dev.off()
