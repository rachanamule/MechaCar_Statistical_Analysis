#-------------- Deliverable 1 -------------------------

# library function to load dplyr package
library(dplyr)

#code to import and read csv
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

#---------------- Deliverable 2 ---------------------------
#code to import and read csv
Suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#get a total summary
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI)) 

#create a lot summary
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

#----------------------------- Deliverable 3 ------------------------
#perform t-test to determine if the PSI across 
# Peform t-test across all Lots
t.test(Suspension_coil$PSI,mu = 1500)
# Peform t-test on Lot 1
t.test(subset(Suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Peform t-test on Lot 2
t.test(subset(Suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Peform t-test on Lot 3
t.test(subset(Suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
