x=read.table(file="household_power_consumption.txt",skip=66637,nrows=2880,sep=";")
names(x)=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity",
           "Sub_metering_1","Sub_metering_2","Sub_metering_3")

png("plot2.png")
plot(x$Global_active_power,main="",xlab="",ylab="Global Active Power (kilowatts)",type="l",xaxt="n")
axis(side=1,at=c(1,round(dim(x)[1]/2),dim(x)[1]),labels=c("Thu","Fri","Sat"))
dev.off()