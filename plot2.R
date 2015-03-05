# Load data
source("load_data.R")

# Plotting
Sys.setlocale("LC_ALL", 'en_US.UTF-8')
plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
