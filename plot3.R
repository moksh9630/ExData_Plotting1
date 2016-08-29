url <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,"electricity.zip")
unzip("electricity.zip",exdir = "electricity")

electricity <- read.table("C:/Users/Sony/Documents/electricity/abc.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")
electricity1 <- subset(electricity,Date %in% c("1/2/2007","2/2/2007"))

png("plot3.png",width = 480,height = 480)
electricity1$datetime <- strptime(paste(electricity1$Date,electricity1$Time, sep = " "),"%e/%m/%Y %H:%M:%S")
plot(electricity1$datetime,as.numeric(electricity1$Sub_metering_1),lines(electricity1$datetime,electricity1$Sub_metering_1),pch = 26,xlab = " ",ylab = "Energy sub Metering")
lines(electricity1$datetime,electricity1$Sub_metering_2,col = "red")
lines(electricity1$datetime,electricity1$Sub_metering_3,col = "blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col = c("black","red","blue"))
dev.off()