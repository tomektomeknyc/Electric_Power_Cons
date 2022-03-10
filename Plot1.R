## Read data

data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

# Convert data to data object and extract it for the following two days
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

# Change globalActivePower to numeric values
globalActivePower <- as.numeric(subsetdata$Global_active_power)
##globalReactivePower <- as.numeric(subsetdata$Global_reactive_power)
##voltage <- as.numeric(subsetdata$Voltage)
##subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
##subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
##subMetering3 <- as.numeric(subsetdata$Sub_metering_3)

## Plot histogram - frequencies of Global Active Power
png(filename="plot1.png", width=480, height = 480 )
## Histogram
par(las=1)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power kWs")
dev.off()

