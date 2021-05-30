# CHALLENGE 15: MECHAcAR_cHALLENGE DELIVERABLE 1
# 3 Use the library() function to load the dplyr package.
library(tidyverse)
library(dplyr)

# 4 Import and read in the MechaCar_mpg.csv file as a dataframe.
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(mechacar_mpg)

# 5 Perform linear regression using the lm() function. In the lm() function, 
# pass in all six variables (i.e., columns), and add the dataframe you created 
# in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

# 6 Using the summary() function, determine the p-value and the r-squared value 
# for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))


# DELIVERABLE 2
# 1 Download the Suspension_Coil.csv file and place it in the active directory.

# 2 In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv 
# file as a table.
susp_coil <- read.csv(file='./Resources/Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 
head(susp_coil)


# 3 Write an RScript that creates a total_summary dataframe using the summarize() 
# function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- susp_coil %>% summarize(Mean=mean(PSI),
                                         Median=median(PSI),
                                         Variance=var(PSI),
                                         SD=sd(PSI))

                                        
# 4 Write an RScript that creates a lot_summary dataframe using the group_by() and 
# the summarize() functions to group each manufacturing lot by the mean, median, 
# variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- susp_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                         Median=median(PSI),
                                                                         Variance=var(PSI),
                                                                         SD=sd(PSI),
                                                                         .groups = 'keep') 



#box plot: PSI Whole lot
plt1 <- ggplot(susp_coil,aes(y=PSI)) #import dataset into ggplot2
plt1 + geom_boxplot() #add boxplot

#box plot: PSI each indicdiual Lot
plt2 <- ggplot(susp_coil,aes(x=Manufacturing_Lot,y=PSI)) #import dataset into ggplot2
plt2 + geom_boxplot()



# DELIVERABLE 3: T-Tests on Suspension Coils

?t.test()
# 1 Using the t.test() function to determine if the PSI across all manufacturing lots 
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test(x=susp_coil$PSI, mu=1500)

# 2 Write 3 more RScripts using the t.test() function and its subset() argument to 
# determine if the PSI for each manufacturing lot is statistically different from
# the populaiton mean of 1,500 pounds per square inch (PSI).
# Create and t. test lot1 cars subset
pop1 <- subset(susp_coil, Manufacturing_Lot=='Lot1')
t.test(x=pop1$PSI, mu=1500)

# Create and t. test lot2 cars subset
pop2 <- subset(susp_coil, Manufacturing_Lot=='Lot2') 
t.test(x=pop2$PSI, mu=1500)

# Create and t. test lot3 cars subset
pop3 <- subset(susp_coil, Manufacturing_Lot=='Lot3') 
t.test(x=pop3$PSI, mu=1500) 








