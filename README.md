# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG

# MechaCar_Statistical_Analysis 
By: Monica Holmes
May 30, 2021


The purpose of this challenge is to utilize R and its tools to perform a Linear Regression, perform summary statistics, and perform t-tests on CSV data. 


# DELIVERABLE 1:

## Linear Regression to Predict Miles per Gallon (MPG)
The MechaCar_mpg linear regression to predict MPG resulted in 50 objects and 6 variables as indicated in the below screen print.

![image](https://user-images.githubusercontent.com/78371845/122812595-dd568500-d29f-11eb-8c9c-01c1fda8cb66.png)

The vehicle_length and ground_clearance variables/coefficients provided a non-random amount of variance to the mpg values in the dataset as indicated in the below screen print. Also, the p-value: 5.35e-11 is smaller than the 0.05% assumed significance level. This conclusion is indicative that there is significant evidence to reject our null hypothesis and that the slope of this linear model is not zero.

Lastly, to answer the question, does the linear model predict mpg of MechaCar prototypes effectively?  The answer is relatively yes, because the r-squared value is 0.7149 which 
equates to approximately 71% of the variance of the dependent variable, mpg, can be determined by this model.

![image](https://user-images.githubusercontent.com/78371845/122812663-f3fcdc00-d29f-11eb-8818-48b7fe2fb370.png)



# DELIVERABLE 2:

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of suspension coils must not exceed 100 pounds per square inch (PSI). With that being said, the initial look into the current manufacturing data meets this design specification, according to the Total Summary, Variance amount of 62.29 PSI, which falls within the 100 PSI, as shown by the below charts.


**Total_summary chart**

![image](https://user-images.githubusercontent.com/78371845/122812728-0d9e2380-d2a0-11eb-8845-513af93d98c7.png)

However, a deeper look into the data shows, two of the three Lots (Lots 1 & 2) meet the design specifications. Lots 1 and 2 have Variances of 0.98 and 7.47 PSI, respectively, however, Lot 3 exceeds the design specification requirement by just over 70 PSI, with a variance of 170.29 PSI. 

**Lot_summary Chart**

![image](https://user-images.githubusercontent.com/78371845/122812799-24447a80-d2a0-11eb-9e60-e84aff823e4b.png)



# DELIVERABLE 3:  

## T. TESTS on SUSPENSION COILS

In this section, I used R to perform t-tests to determine if all manufacturing lots and each lot individually were statistically different from the population mean of 1,500 pounds per square inch. I found that the mean of the sample (all 4 Lots combined) was 1498.78 (and was also show in the analysis above). Its p-Value was 0.06, which is greater than .05, the common significance level, meaning, there is NOT enough evidence to support rejecting the null hypothesis, so we can accept that there is a common population mean of 1500. 

When analyzing each individual Lot, here are the findings:

•	Lot 1 sample has the sample mean of 1,500 and a p-Value of 1. Therefore, we cannot reject the null hypothesis that there is no statistical difference between the observed sample mean and the population mean (1500).

•	Similarly, Lot 2 sample has the sample mean of 1,500.2 and a p-Value of 0.6072. Therefore, we cannot reject the null hypothesis that there is no statistical difference between the observed sample mean and the population mean (1500).

•	Conversely, Lot 3’s sample had the sample mean of 1496.14 and a p-Value of 0.04168, which is less than 0.5, indicating we CAN reject the null hypothesis in this sample mean; this sample mean and population mean are statistically different.

**All 4 Lots Combined Test**

![image](https://user-images.githubusercontent.com/78371845/122812928-548c1900-d2a0-11eb-94d4-9afa163af161.png)


**Lot1 cars t.test**

![image](https://user-images.githubusercontent.com/78371845/122812985-67065280-d2a0-11eb-912e-458e6025503a.png)


**Lot2 cars t. test**

![image](https://user-images.githubusercontent.com/78371845/122813068-7e454000-d2a0-11eb-9fe9-94c9568d3165.png)


**Lot3 cars t. test**

![image](https://user-images.githubusercontent.com/78371845/122813129-93ba6a00-d2a0-11eb-94c5-3e22b9d55590.png)



# DELIVERABLE 4: 

## STUDY DESIGN: MechaCar vs Competition

This portion of the challenge I will use my knowledge of R to design and describe a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

A study that could be performed is a t-test to determine how many miles a vehicle may have before suspension failure and compare that to the competition. An independent t-test could be used because it may compare the means of two different groups, MechaCar versus the competition, to determine whether or not associated population means are significantly different. To run this statistical test, ordinal data on vehicle suspension failure as well as location, and driving terrain (highway vs city) data are needed for more accurate findings. If there is no difference in the suspension failure results between MechaCar and the competition, then it would be a null hypothesis.  The alternative hypothesis would be if there were a difference in the suspension failure results between those two groups (one failing faster or slower than the other). Additional analysis may be done using the t-test results.


  [MOD 15 Challenge README.docx](https://github.com/mmh926/MechaCar_Statistical_Analysis/files/6566788/MOD.15.Challenge.README.docx)

 

  
  
  
