data<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?");
selected_data <- rbind( data[data$Date=="1/2/2007",], data[data$Date=="2/2/2007",] );

png("plot2.png",height=480,width=480,units="px");
plot(selected_data[,3],type="l",ylab="Global Active Power (kilowatts)",xaxt="none",xlab="");
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"));
dev.off();
