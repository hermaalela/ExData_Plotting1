#--------------------------------------------------------------------------------------------------------------
# Plotting 01
# Type                : Histogram
# Name                : Global Active Power
# Variable X          : Global_active_power
# Variable Y          : Frequency
# Breaks              : 13
# Number of tick marks: 3
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
        hist(Subset_2007Feb01_02$Global_active_power, main = "Global Active Power", 
             ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red"
             , breaks = 13, ylim = c(0, 1200), xlim = c(0, 6), xaxp = c(0, 6, 3));
        
        ## Saving to file
        dev.copy(png, file="plot1.png", height=480, width=480)
        dev.off();

# Run script that clean environment
# -----------------------------------------------------------------------------------------------------------
        source("Prep_Env.R");