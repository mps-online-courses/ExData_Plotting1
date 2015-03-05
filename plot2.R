# Load data
source("load_data.R")

# Plotting
Sys.setlocale("LC_ALL", 'en_US.UTF-8')
plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Save to PNG
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()
