EPCdata<-read.table("./household_power_consumption.txt", sep=  ";",header=TRUE)
plotdata2 <- subset(EPCdata, as.Date(EPCdata$Date, format="%d/%m/%Y") %in% 
                      as.Date(c("2007-02-01", "2007-02-02"), format="%Y-%m-%d"))
png(filename = "plot2.png", width = 480, height = 480)
plot(strptime(paste(plotdata2$Date,plotdata2$Time),format="%d/%m/%Y %H:%M:%S"),
     as.numeric(as.character(plotdata2$Global_active_power)),type="l",
     xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
