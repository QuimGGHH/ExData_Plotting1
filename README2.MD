##<b>PreprocessingCleanData.R </b><br>contains the R code to read and preprocessing data (working directory defined and containing "household_power_consumption.txt" data source).
<br>
library(readr)<br>
##Set working directory
<br>
h<- read_delim("household_power_consumption.txt",";", escape_double = FALSE, col_types = cols(Global_active_power = col_number(), 
                Global_intensity = col_number(), 
                Global_reactive_power = col_number(), 
                Sub_metering_1 = col_double(), Sub_metering_2 = col_double(), 
                Time = col_character(), Voltage = col_number()), 
                trim_ws = TRUE)
##Remove NA
k<-h[apply(h, 1, function(x){all(!is.na(x))}),]

##Convert to Time
k$Time<-as.POSIXct(paste(k$Date," ",k$Time),format="%d/%m/%Y %H:%M:%S")

##Convert to Date
k$Date <- as.Date(k$Date, format="%d/%m/%Y")

##Subset : 01 and 02 on February 2007
m<-subset(k,format(k$Date,"%d/%m/%Y")=="01/02/2007" | format(k$Date,"%d/%m/%Y")=="02/02/2007")


Plotx.R and Plotx.PNG are code and results of this assignment.
