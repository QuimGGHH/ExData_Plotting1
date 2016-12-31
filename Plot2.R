if(file.exists("Plot2.png")) file.remove("Plot2.png")
png(filename = "Plot2.png",width = 480,height=480)
plot(subset(m,1==1,c(2,3)),type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()