setwd("D:/Mes documents/Coursera/EDA")

x=read.table(file="household_power_consumption.txt",skip=66637,nrows=2880,sep=";")
names(x)=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity",
           "Sub_metering_1","Sub_metering_2","Sub_metering_3")

png("plot4.png")
plot(x$Sub_metering_1,main="",xlab="",ylab="Energy sub metering",type="l",xaxt="n")
axis(side=1,at=c(1,round(dim(x)[1]/2),dim(x)[1]),labels=c("Thu","Fri","Sat"))
lines(x$Sub_metering_2,col="red")
lines(x$Sub_metering_3,col="blue")
legend("topright",names(x)[7:9],lty=1,col=c("black","red","blue"))
dev.off()