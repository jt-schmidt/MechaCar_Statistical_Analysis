# MechaCar_Statistical_Analysis
Module 15 -- Statistics with R

## Overall Summary

Statiscal review of [MechaCar_mpg.csv](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv) and [Suspension_Coil.csv](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv) datasets using R.

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
> - [Coefficient - t value](https://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R#)

2.  Is the slope of the linear model considered to be zero? Why or why not?
p-value = 5.35 x 10^-11 < 0.05 --> Reject NULL hypothesis
[Interpreting p-value](https://blog.minitab.com/blog/adventures-in-statistics-2/how-to-interpret-regression-analysis-results-p-values-and-coefficients)

3.  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Answer is dependent on level of desired accuracy.  For this case, R^2 is 0.7149 or 71.49% effective.
[Interpreting R^2](https://statisticsbyjim.com/regression/interpret-r-squared-regression/)

## Deliverable 2:  Summary Statistics on Suspension Coils

Question:
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Answer:
Variance
* Total = 62.29 < 100 psi *Design is met*
* Lot1 = 0.97 < 100 psi *Design is met*
* Lot2 = 7.47 < 100 psi *Design is met*
* Lot3 = 170.29 > 100 psi *Design is NOT met*

*Suspension Coil Total Summary*
![SuspensionCoil_TotalSummary](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/SuspensionCoil_TotalSummary.PNG)

*Suspension Coil Lot Summary*
![SuspensionCoil_LotSummary](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/SuspensionCoil_LotSummary.PNG)

## Deliverable 3:  T-Test on Suspension Coils

* Overall:  p-value = 0.06028 > 0.05
* Lot1: p-value = 1.0 > 0.05
* Lot2: p-value = 0.6072 > 0.05
* Lot3: p-value = 0.04168 < 0.05

>P values are the probability of observing a sample statistic that is at least as extreme as sample statistic when null hypothesis is true.
> [Interpreting P-value](https://statisticsbyjim.com/hypothesis-testing/interpreting-p-values/)

*Suspension Coil T-Test Results*
![SuspensionCoil_t-test](https://github.com/jt-schmidt/MechaCar_Statistical_Analysis/blob/main/SuspensionCoil_t-test.PNG)

## Deliverable 4:  Study Comparing MechaCar to Competition

Study considerations:
In your study design, think critically about what metrics would be of interest to a consumer.  Examples:
* Cost
* City vs Highway fuel efficiency
* Horse power
* Maintenance cost
* Safety rating

Questions:
* What metric or metrics are you going to test?
Comparable performance of gasoline versus electric vehicles in terms of total vehicle range on full tank of gas or full battery charge and equivalent distribution of city/highway driving of 25%/75% across the sample set.

To normalize the metric, consider cost ($-value) of a full charge between electric & gasoline powered vehicle.

Metric = $ spent per mile driven.

* What is the null hypothesis or alternative hypothesis?

Simple question...
Does an electric powered vehicle have higher range than gasoline powered vehicle?

Null Hypothesis:
Power source (electric vs gasoline) has no effect on total vehicle range assuming similar driving conditions.

Alternative Hypothesis:
Power source (electric vs gasoline) does have a significant effect on total vehicle range assuming similar driving conditions.  

* What statistical test would you use to test the hypothesis? And why?

Two-Sample t-test for a strict comparison of Electric vs Gasoline powered vehicle datasets to determine significant difference exists or not.

* What data is needed to run the statistical test?

Sample Data required:
* Cost of full charge / tank of gas
* Sample set of electric & gasoline powered vehicles (prefer equal distribution on age, make, model)
* Similar driving pattern & weather conditions
* Sample size of 40 vehicles from each group
