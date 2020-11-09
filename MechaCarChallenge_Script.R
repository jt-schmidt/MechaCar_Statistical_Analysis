#Deliverable 1 
#1.3 Use the library() function to load the dplyr package.
library(dplyr)
library(tidyverse)

#1.4 Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(MechaCar_mpg)

#1.5 Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you #created in Step 4 as the data parameter.
MechaCar_lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

#1.6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
MechaCar_lm
print("#######################################################")
print("#  Linear Regression Model Summary for MechaCar data  #")
print("#######################################################")
summary(MechaCar_lm)

#Deliverable 2
#2.2 In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
head(Suspension_Coil)

#2.3 Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard #deviation of the suspension coil's PSI column.
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 
total_summary

#2.4 Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by #the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
lot_summary

#Deliverable 3
#3.1 write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
#t-test for overall data set
Overall = t.test(x=Suspension_Coil$PSI, mu=1500)
Overall

#3.2 Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is #statistically different from the population mean of 1,500 pounds per square inch.
#t-test for Lot1
Lot1 = t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
Lot1

#3.2 Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is #statistically different from the population mean of 1,500 pounds per square inch.
#t-test for Lot2
Lot2 = t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
Lot2

#3.2 Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is #statistically different from the population mean of 1,500 pounds per square inch.
#t-test for Lot3
Lot3 = t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
Lot3
