d <- read.table("household_power_consumption.txt", header=T, sep=";",
                na.strings="?")

d$Date <- as.Date(d$Date, "%d/%m/%Y")
d <- d[d$Date %in% as.Date(c("2007-02-01", "2007-02-02")), ]

par(cex = 0.7)
png("plot1.png")

hist(d$Global_active_power, main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", col="red")

dev.off()