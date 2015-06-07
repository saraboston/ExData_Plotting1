#Project #1 
#Course: Exploratory Data Analysis
data <- read.csv('household_power_consumption.txt', header=T, sep=';')

# Using data from the dates 2007-02-01 and 2007-02-02
FEB_data<-data[data[,"Date"]=="1/2/2007"|data[,"Date"]=="2/2/2007",]
# Second plot histogram
# Convert Date and Time
FEB_data$DateTime <- strptime(paste(FEB_data$Date, FEB_data$Time), format="%d/%m/%Y %H:%M:%S")

# Plot 
par(mfrow=c(1,1))
png(filename='plot2.png', width=480, height=480, bg='transparent')
plot(x=FEB_data$DateTime, y=as.numeric(FEB_data$Global_active_power), type='l', ylab='Global Active Power (kilowatts)', xlab='')
dev.off()
