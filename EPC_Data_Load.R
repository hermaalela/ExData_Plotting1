##########################################################################################################

## Course      : Exploratory Data Analysis
## University  : Jonhs Hopkins
## Due Date    : 2015-March-02
## Project     : Course Project 01
## Created  by : Hernando Grisales     Created Date: 2015-March-02
## Modified by : Hernando Grisales     Created Date: 2015-March-02

# Script summary:

#  

# Data Source: UC Irvine Machine Learning Repository - Electric power consumption
# Output     : Subset_2007Feb01_02


# Script steps:

# 1. Prepare Environment
# 2. Load the data
 

##########################################################################################################

#--------------------------------------------------------------------------------------------------------------
# Step-001
# Prepare Execution Environment
#--------------------------------------------------------------------------------------------------------------

        
        # Clean up workspace
        rm(list=ls()); 
        
        # set working directory toUC Irvine Machine Learning Repository - Electric power consumption
        setwd('C:/Users/hgrisales/Documents/Coursera/EDA/CoursePJ01/data'); 

#--------------------------------------------------------------------------------------------------------------
# Step-002
# Load the data
# Create two files each with one of the target date for For efficiency
#--------------------------------------------------------------------------------------------------------------

        # set working directory toUC Irvine Machine Learning Repository - Electric power consumption
        setwd('C:/Users/hgrisales/Documents/Coursera/EDA/CoursePJ01/data'); 

        wcommand <- paste("findstr /B ", "1/2/2007" , " household_power_consumption.txt > " , "part2007feb01.txt" ,sep="");
        system(wcommand);
        wcommand <- paste("findstr /B ", "2/2/2007" , " household_power_consumption.txt > " , "part2007feb02.txt" ,sep="");
        system(wcommand);

        DefColClasses        <-  c("character", "character", rep("numeric",7))
        Source_filename      <-  "./part2007feb01.txt"
        Subset_2007feb01     <-  read.table(Source_filename, header = TRUE, sep = ";", colClasses = DefColClasses, na = "?")

        Source_filename      <-  "./part2007feb02.txt"
        Subset_2007feb02     <-  read.table(Source_filename, header = TRUE, sep = ";", colClasses = DefColClasses, na = "?")

        colnames(Subset_2007feb01) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3");

        colnames(Subset_2007feb02) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3");
        Subset_2007Feb01_02  <- rbind(Subset_2007feb01, Subset_2007feb02);

        Subset_2007Feb01_02$Datetime <- strptime(paste(Subset_2007Feb01_02$Date, Subset_2007Feb01_02$Time), "%d/%m/%Y %H:%M:%S");

   
        