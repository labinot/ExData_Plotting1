#get processed data
source("getData.R")

#open the png device for plotting
png(filename = 'plots/plot2.png', width = 480, height = 480, units = 'px')

#plot the data as per plot2
plot(tidydata$DateTime,tidydata$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

#close the plotting device
dev.off()
