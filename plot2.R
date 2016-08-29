url <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,"electricity.zip")
unzip("electricity.zip",exdir = "electricity")

electricity <- read.table("C:/Users/Sony/Documents/electricity/abc.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")
electricity1 <- subset(electricity,Date %in% c("1/2/2007","2/2/2007"))

png("plot2.png",width = 480,height = 480)
electricity1$datetime <- strptime(paste(electricity1$Date,electricity1$Time, sep = " "),"%e/%m/%Y %H:%M:%S")
plot(electricity1$datetime,as.numeric(electricity1$Global_active_power),lines(electricity1$datetime,as.numeric(electricity1$Global_active_power)),pch = 26,xlab = " ",ylab = "Global Active Power (Kilowatts)")
dev.off()
