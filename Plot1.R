if(file.exists("Plot1.png")) file.remove("Plot1.png")
png(filename = "Plot1.png",width = 480,height=480)
hist(m$Global_active_power,xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power",col="red")
dev.off()