#Plot 3
donnees[, Sub_metering_1 := as.numeric(Sub_metering_1)]
donnees[, Sub_metering_2 := as.numeric(Sub_metering_2)]
donnees[, Sub_metering_3 := as.numeric(Sub_metering_3)]

plot(donnees$datetime, donnees$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering", main="Consommation par sous-compteurs",
     xaxt="n")  # Désactiver l'axe X par défaut

lines(donnees$datetime, donnees$Sub_metering_2, col="red")
lines(donnees$datetime, donnees$Sub_metering_3, col="blue")

pos_labels <- as.POSIXct(c("2007-02-01 00:00:00", "2007-02-02 00:00:00", "2007-02-03 00:00:00"))
axis(1, at=pos_labels, labels=c("Thu", "Fri", "Sat"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, bty="n", 
       cex=0.5, y.intersp=0.7, inset=0.05)
