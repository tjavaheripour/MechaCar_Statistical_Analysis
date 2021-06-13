### CHALLENGE 15
library(dplyr)
library(tidyverse)

## DELIVERABLE 1
#Import and read in the MechaCar_mpg.csv file as a dataframe. lm() function
MechaCar_mpg_csv <- read.csv(file = 'MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Multiple Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_csv)

#determine the p-value and the r-squared value for the linear regression model.summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_csv))