#Project #1 
#Course: Exploratory Data Analysis
data <- read.csv('household_power_consumption.txt', header=T, sep=';')

# Using data from the dates 2007-02-01 and 2007-02-02
FEB_data<-data[data[,"Date"]=="1/2/2007"|data[,"Date"]=="2/2/2007",]
# Second plot histogram
# Convert Date and Time
FEB_data$DateTime <- strptime(paste(FEB_data$Date, FEB_data$Time), format="%d/%m/%Y %H:%M:%S")

# MultiPlot
png(filename='plot4.png', width=480, height=480, bg='transparent')
par(mfrow=c(2,2))
with(FEB_data, {
  # Plot 1
  plot(x=FEB_data$DateTime, y=as.numeric(FEB_data$Global_active_power), type='l', 
       xlab='', ylab='Global Active Power')
  
  # Plot 2
  plot(x=FEB_data$DateTime, y=as.numeric(FEB_data$Voltage), type='l', xlab='datetime', ylab='Voltage')
  
  # Plot 3
  plot(x=FEB_data$DateTime, y=as.numeric(FEB_data$Sub_metering_1), type='l', xlab='', ylab='Energy sub metering')
  lines(x=FEB_data$DateTime, y=as.numeric(FEB_data$Sub_metering_2), type='l', col='red')
  lines(x=FEB_data$DateTime, y=as.numeric(FEB_data$Sub_metering_3), type='l', col='blue')
  legend(x='topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
         col=c('black', 'red', 'blue'), lty=c(1, 1, 1), lwd=1, bty='n')
  
  # Plot 4
  plot(x=FEB_data$DateTime, y=as.numeric(FEB_data$Global_reactive_power), type='l', 
       xlab='datetime', ylab='Global_reactive_power')
})
dev.off()