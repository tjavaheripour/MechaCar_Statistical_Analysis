### CHALLENGE 15
library(dplyr)
library(tidyverse)

## DELIVERABLE 1
#Import and read in the MechaCar_mpg.csv file as a dataframe. 
MechaCar_mpg_csv <- read.csv(file = 'MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Multiple Linear Regression -lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_csv)

#determine the p-value and the r-squared value for the linear regression model.summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_csv))

## Deliverable 2

#Import and read Suspension_Coil.csv
Suspension_Coil_csv <- read.csv(file = 'Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- Suspension_Coil_csv %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

##4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.  
lot_summary <- Suspension_Coil_csv %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

## Deliverable 3
#t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI
t.test(Suspension_Coil_csv$PSI,mu=1500)

#Lot 1
t.test(subset(Suspension_Coil_csv, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

#Lot 2
t.test(subset(Suspension_Coil_csv, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

#Lot 3
t.test(subset(Suspension_Coil_csv, Manufacturing_Lot == "Lot3")$PSI, mu=1500)


