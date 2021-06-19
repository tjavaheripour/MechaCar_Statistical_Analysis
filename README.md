# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

- In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length with a p-value of 2.60e-12 and ground clearance with a p-value of 5.21e-8 provided a non-random amount of variance to the MPG values in the MechaCar dataset. In other words, they have a significant impact on MPG.

- The p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

- We'll evaluate the r-squared value of the model to determine if the model sufficiently predicts our dependent variable(mpg).In this case, the r-squared is 0.7149 which means the model would predict mpg about 72% correctly.

![Dev1.PNG](https://github.com/tjavaheripour/MechaCar_Statistical_Analysis/blob/main/images/Dev1.PNG)

## Summary Statistics on Suspension Coils

-	In the total summary dataframe, the variance of the suspension coils is 62.29 PSI, which is well with the 100 PSI variance requirement.
![total_summary.PNG](https://github.com/tjavaheripour/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG)


-	When we look at the lot summary datafarame, We can see the the suspension coils of Lot1 and lot2 are 0.98 and 7.47 respectively which meet the standards of not exceeding a variance of 100 pounds per square inch.
-	Lot 3 with a variance of 170.28 PSI shows the most variance and does not meet the maximum variance requirement.

![lot_summary.PNG](https://github.com/tjavaheripour/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG)

## T-Tests on Suspension Coils

- The results of t-test for all lots show the mean = 1498.27 and the p-value = 0.06028 which is above our significance level(0.05) so the data is considered normally distributed and we don’t have sufficient evidence to reject the null hypothesis, and we would state that the population mean(1500) and the mean of all three of these manufacturing lots are statistically similar.

![T_test_all_lots.PNG](https://github.com/tjavaheripour/MechaCar_Statistical_Analysis/blob/main/images/T_test_all_lots.PNG)

-	The result of t-test on lot 1 shows the mean of 1500 and the p-value = 1. The p-value of 1 shows the distribution is not significantly different from the normal distribution.

![lot1.PNG](https://github.com/tjavaheripour/MechaCar_Statistical_Analysis/blob/main/images/lot1.PNG)

-	The result of t-test on lot 2 shows the mean of 1500.2 and the p-value = 0.6072. The p-value is greater than 0.05 so we do not have sufficient evidence to reject the null hypothesis, and we would state that the distribution is not significantly different from the normal distribution.

![lot2.PNG](https://github.com/tjavaheripour/MechaCar_Statistical_Analysis/blob/main/images/lot2.PNG)
![lot3.PNG](https://github.com/tjavaheripour/MechaCar_Statistical_Analysis/blob/main/images/lot3.PNG)
