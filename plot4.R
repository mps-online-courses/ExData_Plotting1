# Load data
source("load_data.R")

Sys.setlocale("LC_ALL", 'en_US.UTF-8')

# Arrange in 2 rows, 2 cols
par(mfrow=c(2,2))

# Sub-Plot 1
plot(data$Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

# Sub-Plot 2
plot(data$Time, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

# Sub-Plot 3
plot(data$Time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(data$Time, data$Sub_metering_2, col = "red")
lines(data$Time, data$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black", "red", "blue"), pch = "—", bty = "n")

# Sub-Plot 4
Global_reactive_power <- data$Global_reactive_power
plot(data$Time, Global_reactive_power, type = "l", xlab = "datetime")

# Save to PNG
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()
