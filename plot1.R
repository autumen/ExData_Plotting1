download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip", destfile = "power.csv", mode = "wb")
file <- read.table(unzip("power.csv"), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1",  "Sub_metering_2", "Sub_metering_3"), sep = ";", skip = 66637, nrow = 2880, header = FALSE)
hist(as.numeric (file[, 3]), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, filename = "plot12.png", width = 480, height = 480, pointsize = 12, bg = "white")
dev.off()

