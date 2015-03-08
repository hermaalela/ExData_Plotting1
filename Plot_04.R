#--------------------------------------------------------------------------------------------------------------
# Plotting 04
# Type                : Histogram
# Name                : Global Active Power
# Variable X          : Day of week and hour-time
# Variable Y          : Global_active_power
# Description         : It shows comsumption during the day (Friday and Saturday)
#--------------------------------------------------------------------------------------------------------------

# Set the work directory where scripts is located
# -----------------------------------------------------------------------------------------------------------
        setwd("C:/Users/hgrisales/Documents/Study/Data Sciencie/Course 04 - Exploratory Data Analysis/Plotting 01/");

# Run script that prepare environment
# -----------------------------------------------------------------------------------------------------------
        source("Prep_Env.R");

# Run script that Load the data
# -----------------------------------------------------------------------------------------------------------
        source("EPC_Data_Load.R");

# Create the first Plot
# -----------------------------------------------------------------------------------------------------------
        setwd("C:/Users/hgrisales/Documents/Study/Data Sciencie/Course 04 - Exploratory Data Analysis/Plotting 01/");

        par(mfrow=c(2,2), mar=c(4,3,0,0), oma=c(0,0,2,0))

        # plot 1 (NW)
        plot(Subset_2007Feb01_02$Datetime, Subset_2007Feb01_02$Global_active_power, type = "l", ylab = "Global Active Power", 
             xlab = "")
        
        # plot 2 (NE)
        plot(Subset_2007Feb01_02$Datetime, Subset_2007Feb01_02$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
        
        # plot 3 (SW)
        plot(Subset_2007Feb01_02$Datetime, Subset_2007Feb01_02$Sub_metering_1, type = "l", ylab = "Energy sub metering", 
             xlab = "", col = "black")
        points(Subset_2007Feb01_02$Datetime, Subset_2007Feb01_02$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", 
               col = "red")
        points(Subset_2007Feb01_02$Datetime, Subset_2007Feb01_02$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", 
               col = "blue")
        legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", 
                                                                                "Sub_metering_2", "Sub_metering_3"), bty = "n", )
        
        # plot 4 (SE)
        plot(Subset_2007Feb01_02$Datetime, Subset_2007Feb01_02$Global_reactive_power, type = "l", xlab = "datetime", 
             ylab = "Global_reactive_power", ylim = c(0, 0.5))
        

        
        ## Saving to file
        dev.copy(png, file="plot4.png", height=480, width=480)
        dev.off()


# Run script that clean environment
# -----------------------------------------------------------------------------------------------------------
       source("Prep_Env.R");