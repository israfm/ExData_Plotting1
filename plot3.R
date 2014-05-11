EPCdata<-read.table("./household_power_consumption.txt", sep=  ";",header=TRUE)
plotdata2 <- subset(EPCdata, as.Date(EPCdata$Date, format="%d/%m/%Y") %in% 
                      as.Date(c("2007-02-01", "2007-02-02"), format="%Y-%m-%d"))
png(filename = "plot3.png", width = 480, height = 480)
with(plotdata2,plot(strptime(paste(plotdata2$Date,plotdata2$Time),format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(Sub_metering_1)),
                    xlab="",ylab="Energy sub metering",type="l",col = "black"))
with(plotdata2,lines(strptime(paste(plotdata2$Date,plotdata2$Time),format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(Sub_metering_2)),type="l",col = "red"))
with(plotdata2,lines(strptime(paste(plotdata2$Date,plotdata2$Time),format="%d/%m/%Y %H:%M:%S"), as.numeric(as.character(Sub_metering_3)),type="l",col = "blue"))
legend("topright",lty=c(1,1,1),col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.7)
dev.off()
