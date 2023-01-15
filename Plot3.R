##Plot 3 Assignment

## Convert character to numeric for plotting 
segdata$Sub_metering_1 <- as.numeric(segdata$Sub_metering_1)
segdata$Sub_metering_2 <- as.numeric(segdata$Sub_metering_2)
## Create the plot
with(segdata, plot(datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
## Add lines and legend
with(segdata, lines(datetime, Sub_metering_2, type="l", col="red"))
with(segdata, lines(datetime, Sub_metering_3, type="l", col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2, col=c("black", "red", "blue"))
## Save the png file
dev.copy(png, file="Plot 3.png")
dev.off()