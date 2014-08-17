x=read.table(file="household_power_consumption.txt",skip=66637,nrows=2880,sep=";")
names(x)=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity",
    "Sub_metering_1","Sub_metering_2","Sub_metering_3")

png("plot1.png")
hist(x$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()