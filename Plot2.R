##Plot 2 Assignment

## Convert date and time format for plotting
datetime <- strptime(paste(segdata$Date, segdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
## Add new datatime to the data
segdata$dattime <-datetime
## Create the plot
with (segdata, plot(datetime, Global_active_power, type="l", xlab="", 
                    ylab="Global Active Power (kilowatts)"))
## Save the png file
dev.copy(png, file="Plot 2.png")
dev.off()
