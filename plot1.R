
data<-read.csv("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?");
selected_data <- rbind( data[data$Date=="1/2/2007",], data[data$Date=="2/2/2007",] );

png("plot1.png",height=480,width=480,units="px");
hist(selected_data[,3],main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red");
dev.off();