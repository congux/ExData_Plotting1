##Plot 1 Assignment 

## Load and subset the data
rawdata<-read.table("household.txt", header=T, sep=";")
segdata<-rawdata[rawdata$Date=="1/2/2007"|rawdata$Date=="2/2/2007", ]
## Change from character to numeric for plotting
segdata$Global_active_power <- as.numeric(zzz$Global_active_power)
## Create the plot
hist(segdata$Global_active_power,  col="red",  
     main = "Global Active Power",  xlab = "Global Active Power (kilowatts)")
## Save the png file
dev.copy(png, file="Plot 1.png")
dev.off()
