EPCdata<-read.table("./household_power_consumption.txt", sep=  ";",header=TRUE)

plotdata1 <- subset(EPCdata, as.Date(EPCdata$Date, format="%d/%m/%Y") %in% 
                      as.Date(c("2007-02-01", "2007-02-02"), format="%Y-%m-%d"))
png(filename = "plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(plotdata1$Global_active_power)),
     , main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     col = "red")
dev.off()
