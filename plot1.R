#get processed data
source("getData.R")

#open the png device for plotting
png(filename = 'plots/plot1.png', width = 480, height = 480, units = 'px')

#plot the data as per plot1
hist(tidydata$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

#close the plotting device
dev.off()