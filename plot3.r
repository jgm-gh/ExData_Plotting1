d <- read.table("household_power_consumption.txt", header=T, sep=";",
                na.strings="?")

d$Date <- as.Date(d$Date, "%d/%m/%Y")
d <- d[d$Date %in% as.Date(c("2007-02-01", "2007-02-02")), ]
m <- nrow(d)

par(cex = 0.7)
png("plot3.png")

plot(1:m, d$Sub_metering_1, type="l", xaxt = "n", xlab="",
     ylab="Energy sub metering")

lines(1:m, d$Sub_metering_2, col = "red")
lines(1:m, d$Sub_metering_3, col = "blue")
axis(1, at=c(1, m/2 + 1, m), labels=c("Thu", "Fri", "Sat"))
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty = 1, lwd = 1, col = c("black", "red", "blue"), cex = 0.955)

dev.off()