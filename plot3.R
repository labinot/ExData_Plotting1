#get processed data
source("getData.R")

#open the png device for plotting
png(filename = 'plots/plot3.png', width = 480, height = 480, units = 'px')

#create the plote with the first line for sub_metering_1 measurement with defualt color black
plot(tidydata$DateTime,tidydata$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")

#add the line for sub_metering_2 measurement with red color
lines(tidydata$DateTime,tidydata$Sub_metering_2,col="red")

#add the line for sub_metering_3 measurement with blue color
lines(tidydata$DateTime,tidydata$Sub_metering_3,col="blue")

#add a legent to the graph
legend("topright", lwd=1, col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

#close the plotting device
dev.off()