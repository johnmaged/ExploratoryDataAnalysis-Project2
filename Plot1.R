# Setting the working directory
setwd('E://exdata_data_NEI_data')

# Reading the data..
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

findata <- with(NEI, aggregate(Emissions, by = list(year), sum))

plot(findata, type = "o", main = "Total PM2.5 Emissions", xlab = "Year", ylab = "PM2.5 Emissions", pch = 19, col = "darkblue", lty = 6)
