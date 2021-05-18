# MechaCar Statistical Analysis

## Overview of the Analysis 

### Purpose


## Analyses

### Linear Regression to Predict MPG

###### Linear Regression
> ![mpg_LR](https://user-images.githubusercontent.com/77405273/118402318-43efdf80-b61e-11eb-84c0-2e6fa2a36ebd.png)

- **Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

The variables that provide a non-random amount of variance to the mpg values are 
vehicle length and ground clearance. 

- **Is the slope of the linear model considered to be zero? Why or why not?**

No, the slope is not considered to be zero given the variance of results. 

- **Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

This linear model can predict the mpg of the prototype in relation to vehicle length and ground clearance, but not weight, spoiler angle and AWD, which we would expect to heavily influence mpg. This leads us to believe this linear model in not effective. Additionally, the r-squared value is 0.68, indicating it is not a good predictor.

### Summary Statistics on Suspension Coils

###### Total Summary
> ![total_summary](https://user-images.githubusercontent.com/77405273/118402319-44887600-b61e-11eb-8423-f5e8544f9579.png)

###### Lot Summary
> ![lot_summary](https://user-images.githubusercontent.com/77405273/118402321-45210c80-b61e-11eb-88eb-048d3c60908c.png)

- **The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

The design specifications for all manufacturing lots is met at a variance of 62.3. It is met individually for Lots 1 and 2 at 1 and 7.5, but not for Lot 3 at 170.3. 

### T-Tests on Suspension Coils

###### All Manufacturing Lots
> ![t test_all](https://user-images.githubusercontent.com/77405273/118402323-45210c80-b61e-11eb-9ebd-b7654520ebf9.png)

The above t-test was performed on all manufacturing lots in comparison to the population average of 1500 PSI. The given p-value of 0.06 shows that there is not a statistically significant difference between the results of the groups. With a low t-value, this predictor can be dropped from the model. 

###### Manufacturing at Lot 1
> ![t test_Lot1](https://user-images.githubusercontent.com/77405273/118402324-45210c80-b61e-11eb-956a-8c461de95bd5.png)
###### Manufacturing at Lot 2
> ![t test_Lot2](https://user-images.githubusercontent.com/77405273/118402325-45b9a300-b61e-11eb-91c5-5513d38f3821.png)
###### Manufacturing at Lot 3
> ![t test_Lot3](https://user-images.githubusercontent.com/77405273/118402326-45b9a300-b61e-11eb-80b7-9c9d80d6e4e6.png)

Out of the 3 lots, Lot 3 was the only manufacturing facility to return a statistically significant t-test results with a p-value of 0.04. Given the low t-value, Lot 3 indicates the predictor can be removed from the model. 

### Study Design: MechaCar vs Competition

- **What metric or metrics are you going to test?**

I will test the MechaCar weight and drive train as it relates to fuel efficiency compared to the competition. With fuel efficiency becoming more important financially and environmentally, these will be key metrics to influence the MechaCar design and production. 

- **What is the null hypothesis or alternative hypothesis?**

The null hypothesis is that the MechaCar will exhibit improved fuel efficiency compared the leading competitors based on car weight and drive train as it relates to city and highway MPG. The alternative hypothesis with be accepted if the following statistical tests show that the MechaCar does not out perform the competition.

- **What statistical test would you use to test the hypothesis? And why?**

We will performa linear regression against MechaCar prototypes and a sample set of competing cars (with sample sizes large enough to produce statistically significant results). We will import the MPG data for all participating cars and perform a linear regression using car weight and drive train variables. 

- **What data is needed to run the statistical test?**

We will need robust mpg, car weight and drive train data for the MechaCar and multiple competitors. This will require large sample sizes and data across manufacturing lots. 
