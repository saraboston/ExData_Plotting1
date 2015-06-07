#Project #1 
#Course: Exploratory Data Analysis
data <- read.csv('household_power_consumption.txt', header=T, sep=';')

# Using data from the dates 2007-02-01 and 2007-02-02
FEB_data<-data[data[,"Date"]=="1/2/2007"|data[,"Date"]=="2/2/2007",]
# First plot histogram
par(mfrow=c(1,1))
png(filename='plot1.png', width=480, height=480, bg='transparent')
hist(as.numeric(FEB_data$Global_active_power), xlab='Global Active Power (kilowatts)', main='Global Active Power', col='red')
dev.off()

