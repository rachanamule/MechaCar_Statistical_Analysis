# MechaCar Analysis


## Overview of project

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. 
AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

This challange has following Deliverables:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes

* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots

* Run t-tests to determine if the manufacturing lots are statistically different from the mean population

* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Linear_Regression](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/linear_regression.png)
![Summary](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/Summary_linear_regression.png)

The results of the multiple linear regression analysis on the MechaCar data shows that the vehicle length (Pr=2.60e-12) and the ground clearance (Pr=5.21e-08) both provide a non-random amount of variance to the mpg measure. The intercept (Pr=5.08e-08) is also non-random.

It is dificult to plot a multiple linear regressin model. The slope of our multiple linear regression model is not considered to be zero, and the null hypothesis is rejected since the p-value is much smaller than our assumed significance level of .05% and our r-squared value is high at .7. Our coeficient table shows the slope coefficient for each independent variable to the dependent variable, mpg.

Since r squared value is high at .7 and p-value (5.35e-11) is less than the significance level so the multiple linear regression is sufficient for predicting mpg of MechaCar prototypes on the given data. 

## Summary Statistics on Suspension Coils

![Total Summary](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/total_summary.png)
![Lot Summary](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/lot_summary.png)

With the understanding that the design specifications for the MechaCar suspension coils mandate that the variance of the suspension coils cannot exceed 100 pounds per square inch (PSI) .
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

If we look at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement. So the current manufacturing data meet the design requirement.


## T-Tests on Suspension Coils

![t-test](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/one_sample_t-test.png)

Summary of all lots:
From here we can see the true mean of the sample is 1498.78, which we also saw in the summary statistics above. With a p-Value of 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. That is to say, the mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

![lot1](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/t-test_lot1.png)

In lot 1 t-test mean of 1500,as we saw in the summary statistics above. With a p-Value of 1, clearly we cannot reject (i.e. accept) the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).

![lot2](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/t-test_lot2.png)

Lot 2 has the same outcome with a sample mean of 1500.02, a p-Value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.

![lot3](https://github.com/rachanamule/MechaCar_Statistical_Analysis/blob/fa8d911912cf9407f05edfc59bf9c2b5e910d907/Resources/t-test_lot3.png)

Lot 3, Here the sample mean is 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05. All indicating to reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.

## Study Design: MechaCar vs Competition

* Metrics to be tested :
    I would study the fuel efficiency. Since the current analysis on mpg has shown that the vehicle length and ground clearance have a correlation to the fuel efficiency, I would take the study one step further and analyze the standard tire size being used in the prototype cars.   

* Null Hypothesis : Negative correlation between the tire size and the miles per gallon.

* Alternative Hypothesis: No statistical significant correlation between the miles per gallon and tire size.

* Statistical Tests: A multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price (it may be all of them!)
