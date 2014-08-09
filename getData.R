#This script preprocessed the data in folder Data and makes
#them ready for analysis/graphing phaze. 

#It is called (included) in all the files that create plots 
#(1 throug 4) from houshold_power_consumtion.txt data, as per coursework requirement.

#read in the data
data=read.table("data/household_power_consumption.txt",sep=";",head=T,colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),na.strings="?")

#slice the data only for days 01/02/2007 and 02/02/2007
tidydata=data[data$Date %in% c("1/2/2007","2/2/2007"),]

#free up the memory from the initial dataset
rm("data")

#convert Date column to date datatype
tidydata$Date=as.Date(tidydata$Date,"%d/%m/%Y")

#add a date time column (will be used for plots 2 through 4)
tidydata$DateTime=as.POSIXct(paste(tidydata$Date, tidydata$Time), format="%Y-%m-%d %H:%M:%S")