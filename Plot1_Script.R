## PLOTING DATA - PLOT 1
## 
hist(as.numeric(as.character(reduceddata$Global_active_power)), 
     ## note we used as.character and as numeric since
     ## the variable is factor variable.
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
cat("Plot1.png has been saved in", getwd())
##