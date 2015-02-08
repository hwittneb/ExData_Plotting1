# Course: Exploratory Data Analysis / Coursera
# Project: 1 
#
# filename: load_data.R
# created: 02/2015
#
#Loading the data
# ----------------
#
# Script to load the dataset of Electric Power Consumption data
# with 2,075,259 rows and 9 columns.
#
hpc_file <- "./household_power_consumption.txt"
data <- read.table(hpc_file, 
                   header = TRUE, 
                   sep = ";",
                   colClasses = c("character",
                                  "character",
                                  rep("numeric",7)),
                   na = "?")
#
# Subsetting dataset to data of these 2 days: 2007-01-01 and 2007-02-02
#
subData <- data[(data$Date == "1/2/2007" | data$Date == "2/2/2007"), ]
#
x <- paste(subData$Date, subData$Time)
#
subData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(subData) <- 1:nrow(subData)
#
