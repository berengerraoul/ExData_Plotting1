
plot(donnees$datetime, donnees$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kW)", 
     xaxt="n")  # Désactiver l'axe X par défaut

pos_labels <- as.POSIXct(c("2007-02-01 00:00:00", "2007-02-02 00:00:00", "2007-02-03 00:00:00"))

axis(1, at=pos_labels, labels=c("Thu", "Fri", "Sat"))

png("plot2.png", width = 480, height = 480)
