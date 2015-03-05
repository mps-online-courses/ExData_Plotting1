# Date: Date in format dd/mm/yyyy
# Time: time in format hh:mm:ss
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

# 2007-02-01 and 2007-02-02
# Read such that only these two days are taken
# strptime() / as.Date()
# missing = ?

parse.Date <- function(date) as.Date(date, "%d/%m/%Y")

raw_data <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
raw_data$Time <- strptime(paste(raw_data$Date, raw_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
raw_data$Date <- parse.Date(raw_data$Date)
data <- subset(raw_data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
