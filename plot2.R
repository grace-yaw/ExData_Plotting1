data<- read.table(file = household_power_consumption.txt, sep = ";", header= TRUE, StringsAsFactors = FALSE)
df<- subset(data, Date =="1/2/2007"| Date == "2/2/2007")
#converting date and time via the strptime function
df$DateTime <- strptime(paste(df$Date, df$Time), format="%d/%m/%Y %H:%M:%S")
class(df$DateTime)
library(lubridate)
summary(wday(df$DateTime, label=TRUE))
plot(x = df$DateTime, y = df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")