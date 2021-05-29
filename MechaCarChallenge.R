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







