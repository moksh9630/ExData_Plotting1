url <- "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url,"electricity.zip")
unzip("electricity.zip",exdir = "electricity")

electricity <- read.table("C:/Users/Sony/Documents/electricity/abc.txt",header = TRUE,sep = ";",stringsAsFactors = FALSE,dec = ".")
electricity1 <- subset(electricity,Date %in% c("1/2/2007","2/2/2007"))

png("plot1.png",width = 480,height = 480)
