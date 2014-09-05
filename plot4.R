data<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?");
selected_data <- rbind( data[data$Date=="1/2/2007",], data[data$Date=="2/2/2007",] );

png("plot4.png",height=480,width=480,units="px");

par(mfrow=c(2,2))

plot(selected_data[,3],type="l",ylab="Global Active Power",xaxt="none",xlab="")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

plot(selected_data[,5],type="l",ylab="Voltage",xaxt="none",xlab="datetime")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

plot(selected_data[,7],type="l",ylab="Energy sub metering",xaxt="none",xlab="",ylim=c(0,38))
par(new=T)
plot(selected_data[,8],type="l",ylab="",xaxt="none",yaxt="none",xlab="",col="red",ylim=c(0,38))
par(new=T)
plot(selected_data[,9],type="l",ylab="",xaxt="none",yaxt="none",xlab="",col="blue",ylim=c(0,38))
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
legend( "topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), lwd=c(2.5,2.5), col=c("black","red","blue"))

plot(selected_data[,4],type="l",ylab="Global Reactive Power",xaxt="none",xlab="datetime")
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

dev.off()


