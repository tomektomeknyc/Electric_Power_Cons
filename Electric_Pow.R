data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE)
summary(data)

SubsetData <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

globalActivePower <- as.numeric(SubsetData$Global_active_power)
globalReactivePower <- as.numeric(SubsetData$Global_reactive_power)
voltage <- as.numeric(SubsetData$Voltage)
subMetering1 <- as.numeric(SubsetData$Sub_metering_1)
subMetering2 <- as.numeric(SubsetData$Sub_metering_2)
subMetering3 <- as.numeric(SubsetData$Sub_metering_3)

hist(globalActivePower, col="blue", main="Global Active Power", xlab="Global Active Power kWs")
