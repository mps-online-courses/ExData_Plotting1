# Load data
source("load_data.R")

# Plotting
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

# Save to PNG
dev.copy(png, file = "plot1.png")
dev.off()
