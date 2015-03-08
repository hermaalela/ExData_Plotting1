#--------------------------------------------------------------------------------------------------------------
# Plotting 02
# Type                : 
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

        plot(Subset_2007Feb01_02$Datetime, Subset_2007Feb01_02$Global_active_power, type = "l"
             , xlab = "", ylab = "Global Active Power (kilowatts)");
        
        ## Saving to file
        dev.copy(png, file="plot2.png", height=480, width=480)
        dev.off()

# Run script that clean environment
# -----------------------------------------------------------------------------------------------------------
        source("Prep_Env.R");