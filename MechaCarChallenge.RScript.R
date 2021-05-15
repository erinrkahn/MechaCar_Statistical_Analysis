# Deliverable 1

library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv')
mpg_LR = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)
summary(mpg_LR)

# Deliverable 2

# Total Summary

suspension_coil <- read.csv('Suspension_Coil.csv')
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Lot Summary

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Deliverable 3

