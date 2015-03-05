# Load data
source("load_data.R")

# Plotting
Sys.setlocale("LC_ALL", 'en_US.UTF-8')
plot(data$Time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$Time, data$Sub_metering_2, col = "red")
lines(data$Time, data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), pch = "—")

# Save to PNG
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()
