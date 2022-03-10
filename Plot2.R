

library(lubridate)

## Read data

data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)

# Convert data to data object and extract it for the following two days
subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

# Change globalActivePower to numeric values
globalActivePower <- as.numeric(subsetdata$Global_active_power)




## Time Series
## Plotting line plot
png(filename="plot2.png", width=480, height = 480 )
par(las=1)
datetime <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power kWs")
dev.off()
