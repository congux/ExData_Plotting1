##Plot 4 Assignment

## Convert character to numeric for plotting
segdata$Global_reactive_power <- as.numeric(segdata$Global_reactive_power)
segdata$Voltage <- as.numeric(segdata$Voltage)
## set up the layout
par(mfrow = c(2, 2)) 
# Create 1/4 plot
with (segdata, plot(datetime, Global_active_power, type="l", xlab="", 
                    ylab="Global Active Power"))
# Create 2/4 plot
with (segdata, plot(datetime, Voltage, type="l", xlab="datetime", ylab="Voltage"))
# Create 3/4plot
with(segdata, plot(datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(segdata, lines(datetime, Sub_metering_2, type="l", col="red"))
with(segdata, lines(datetime, Sub_metering_3, type="l", col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=, lwd=2, col=c("black", "red", "blue"), cex=0.5)
# Create 4/4 plot
with(segdata, plot(datetime, Global_reactive_power, type="l", xlab="datetime",
                   ylab="Global_reactive_power"))
## Save the png file
dev.copy(png, file="Plot 4.png")
dev.off()