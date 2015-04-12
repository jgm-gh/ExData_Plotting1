d <- read.table("household_power_consumption.txt", header=T, sep=";",
                na.strings="?")

d$Date <- as.Date(d$Date, "%d/%m/%Y")
d <- d[d$Date %in% as.Date(c("2007-02-01", "2007-02-02")), ]
m <- nrow(d)

par(cex = 0.7)
png("plot2.png")

plot(1:m, d$Global_active_power, type="l", xaxt = "n", xlab="",
     ylab="Global Active Power (kilowatts)")

axis(1, at=c(1, m/2 + 1, m), labels=c("Thu", "Fri", "Sat"))

dev.off()