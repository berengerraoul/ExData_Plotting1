
library(data.table)


donnees <- fread("household_power_consumption.txt", sep = ";", na.strings = "?")


donnees[, Date := as.Date(Date, format="%d/%m/%Y")]


donnees <- donnees[Date == "2007-02-01" | Date == "2007-02-02"]


donnees[, datetime := as.POSIXct(paste(Date, Time), format="%Y-%m-%d %H:%M:%S")]

hist(donnees$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active power (kilowatts)")
