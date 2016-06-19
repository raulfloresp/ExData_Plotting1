## PLOTING DATA - PLOT 3
plot(reduceddata$DateTime, as.numeric(as.character(reduceddata$Sub_metering_1)),type='l', 
     ylab ="Energy sub metering", xlab="")
lines(reduceddata$DateTime, as.numeric(as.character(reduceddata$Sub_metering_2)),type='l', col='red')
lines(reduceddata$DateTime, reduceddata$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1)
       ,col=c("black","red","blue"))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
cat("plot3.png has been saved in", getwd())

##