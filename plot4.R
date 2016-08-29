url <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,"electricity.zip")
unzip("electricity.zip",exdir = "electricity")

electricity <- read.table("C:/Users/Sony/Documents/electricity/abc.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")
electricity1 <- subset(electricity,Date %in% c("1/2/2007","2/2/2007"))

png("plot4.png",width = 480,height = 480)
par(mfrow = c(2,2))
## Plot 1,1
plot(electricity1$datetime,as.numeric(electricity1$Global_active_power),lines(electricity1$datetime,as.numeric(electricity1$Global_active_power)),pch = 26,xlab = " ",ylab = "Global Active Power")

## Plot 1,2
plot(electricity1$datetime,as.numeric(electricity1$Voltage),lines(electricity1$datetime,as.numeric(electricity1$Voltage)),pch = 26,xlab = " ",ylab = "Voltage")

## Plot 2,1
plot(electricity1$datetime,as.numeric(electricity1$Sub_metering_1),lines(electricity1$datetime,electricity1$Sub_metering_1),pch = 26,xlab = " ",ylab = "Energy sub Metering")
lines(electricity1$datetime,electricity1$Sub_metering_2,col = "red")
lines(electricity1$datetime,electricity1$Sub_metering_3,col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col = c("black","red","blue"))

## Plot 2,2
plot(electricity1$datetime,as.numeric(electricity1$Global_reactive_power),lines(electricity1$datetime,as.numeric(electricity1$Global_reactive_power)),pch = 26,xlab = " ",ylab = "Global_reactive_power")
dev.off()