#get processed data
source("getData.R")

#open the png device for plotting
png(filename = 'plots/plot4.png', width = 480, height = 480, units = 'px')

#divde the plot in four pieces.
par(mfrow=c(2,2))

#first plot
plot(tidydata$DateTime,tidydata$Global_active_power,type="l",xlab="",ylab="Global Active Power")

#second plot
plot(tidydata$DateTime,tidydata$Voltage,type="l",xlab="datetime",ylab="Voltage")

#third plot
plot(tidydata$DateTime,tidydata$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")

#add the line for sub_metering_2 measurement with red color to the third plot
lines(tidydata$DateTime,tidydata$Sub_metering_2,col="red")

#add the line for sub_metering_3 measurement with blue color to the third plot
lines(tidydata$DateTime,tidydata$Sub_metering_3,col="blue")

#add a legent to the third plot
legend("topright", lwd=1, bty="n", col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

#fourth plot
plot(tidydata$DateTime,tidydata$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

#close the plotting device
dev.off()