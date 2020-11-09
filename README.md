# MechaCar_Statistical_Analysis
Module 15 -- Statistics with R

## Overall Summary

Statiscal review of [MechaCar_mpg.csv](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) and [Suspension_Coil.csv" datasets](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) using R.

R source can be found in:
* [MechCarChallenge R Notebook](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.Rmd)
* [MechaCarChallenge R Script](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge_Script.R)

Reviews performed include:
* Linear Regression Model
* Total & Lot Summary Statistics
* T-Test

## Deliverable 1:  Linear Regression to Predict MPG

*Mecha Car MPG Linear Regression Summary*  
![MechaCarMPG_LinearRegressionSummary](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/MechaCarMPG_LinearRegressionSummary.PNG)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* AWD (t value = -1.346)
* Vehicle Weight (t value = 1.807)
* Spoiler Angle (t value = 1.034)
Why?  t-values are nearest to zero


>The coefficient t-value is a measure of how many standard deviations our coefficient estimate is far away from 0. We want it to be far away from zero as this would indicate we could reject the null hypothesis - that is, we could declare a relationship between speed and distance exist. In our example, the t-statistic values are relatively far away from zero and are large relative to the standard error, which could indicate a relationship exists. In general, t-values are also used to compute p-values.
> - [Coefficient - t value](https://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R#:~:text=The%20Pr(%3Et)%20acronym,dist)%20variables%20due%20to%20chance.)

2.  Is the slope of the linear model considered to be zero? Why or why not?

3.  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Deliverable 2:  Summary Statistics on Suspension Coils

Question:
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Answer:

*Suspension Coil Total Summary*
![SuspensionCoil_TotalSummary](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/SuspensionCoil_TotalSummary.PNG)

*Suspension Coil Lot Summary*
![SuspensionCoil_LotSummary](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/SuspensionCoil_LotSummary.PNG)

## Deliverable 3:  T-Test on Suspension Coils

*Suspension Coil T-Test Results*
![SuspensionCoil_t-test](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/SuspensionCoil_t-test.PNG)

## Deliverable 4:  Study Comparing MechaCar to Competition
