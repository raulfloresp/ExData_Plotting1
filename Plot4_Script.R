## PLOTING DATA - PLOT 4
par(mfcol=c(2,2))

plot(reduceddata$DateTime, as.numeric(as.character(reduceddata$Global_active_power)),type='l',ylab="Global Active Power", xlab="")

plot(reduceddata$DateTime, as.numeric(as.character(reduceddata$Sub_metering_1)),type='l', xlab="",ylab ="Energy sub metering")
lines(reduceddata$DateTime, as.numeric(as.character(reduceddata$Sub_metering_2)),type='l', col='red')
lines(reduceddata$DateTime, reduceddata$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"))

plot(reduceddata$DateTime, as.numeric(as.character(reduceddata$Voltage)),type='l', 
     ylab="Voltage",xlab="datetime" )

plot(reduceddata$DateTime, as.numeric(as.character(reduceddata$Global_reactive_power)),type='l', 
     ylab="Global_reactive_power",xlab="datetime" )
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
cat("plot4.png has been saved in", getwd())
##
## End of Script
