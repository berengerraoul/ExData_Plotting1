#Plot 4
par(mfrow = c(2,2))

plot(donnees$datetime, donnees$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kW)", 
     xaxt="n")  
pos_labels <- as.POSIXct(c("2007-02-01 00:00:00", "2007-02-02 00:00:00", "2007-02-03 00:00:00"))
axis(1, at=pos_labels, labels=c("Thu", "Fri", "Sat"))

plot(donnees$datetime, donnees$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering",
     xaxt="n")  # Désactiver l'axe X par défaut
lines(donnees$datetime, donnees$Sub_metering_2, col="red")
lines(donnees$datetime, donnees$Sub_metering_3, col="blue")
pos_labels <- as.POSIXct(c("2007-02-01 00:00:00", "2007-02-02 00:00:00", "2007-02-03 00:00:00"))
axis(1, at=pos_labels, labels=c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, bty="n", 
       cex=0.5, y.intersp=0.7, inset=0.05)

plot(donnees$datetime, donnees$Voltage, type="l", col="black",
     xlab="datetime", ylab="Voltage",
     xaxt="n")  # Désactiver l'axe X par défaut
pos_labels <- as.POSIXct(c("2007-02-01 00:00:00", "2007-02-02 00:00:00", "2007-02-03 00:00:00"))
axis(1, at=pos_labels, labels=c("Thu", "Fri", "Sat"))

plot(donnees$datetime, donnees$Global_reactive_power, type="l", col="black",
     xlab="datetime", ylab="Global_reactive_power",
     xaxt="n")  # Désactiver l'axe X par défaut
pos_labels <- as.POSIXct(c("2007-02-01 00:00:00", "2007-02-02 00:00:00", "2007-02-03 00:00:00"))

png("plot4.png", width = 480, height = 480)
axis(1, at=pos_labels, labels=c("Thu", "Fri", "Sat"))
