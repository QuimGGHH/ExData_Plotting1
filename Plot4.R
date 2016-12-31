if(file.exists("Plot4.png")) file.remove("Plot4.png")
png(filename = "Plot4.png",width = 480,height=480)

par(mfrow=c(2,2))
#Plot 4.1
plot(subset(m,1==1,c(2,3)),type="l",xlab="",ylab="Global Active Power (kilowatts)")
#Plot 4.2
plot(subset(m,1==1,c(2,5)),type="l",xlab="datetime",ylab="Voltage")
#Plot 4.3
plot(subset(m,1==1,c(2,7)),type="n",xlab="",ylab="Energy sub metering")
lines(m$Time,m$Sub_metering_1,col="black")
lines(m$Time,m$Sub_metering_2,col="red")
lines(m$Time,m$Sub_metering_3,col="blue")
#Plot 4.4
plot(subset(m,1==1,c(2,4)),type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()