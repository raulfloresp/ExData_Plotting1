## PLOTING DATA - PLOT 2
plot(reduceddata$DateTime, as.numeric(as.character(reduceddata$Global_active_power)),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
cat("plot2.png has been saved in", getwd())
##