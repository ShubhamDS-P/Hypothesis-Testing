LabTAT <- read.csv("E:/Data Science Assignment Questionair/Data Science/Assignment Question/Assignment-3 Hypothesis Testing/LabTAT.csv")
View(LabTAT)
attach(LabTAT)

stacked_data<- stack(LabTAT)
#############Normality test###############

shapiro.test(stacked_data$values)
#p-high Null fly Accept Ho
#All the Y's are normal hence we will check the variance are equal or not.

############variance test###############
library(car)
leveneTest(stacked_data$values ~ stacked_data$ind, data = stacked_data)

#p-low Null go, Accept Ha 
#Hence the variances are not equal in the given data we use 2-sample T test for different combinations of the laboratories

#############2 sample T test##################

t.test(Laboratory.1,Laboratory.2,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
#p-high null fly, accept Ho
#TAT averages of laboratory1 and laboratory2 are Equal

t.test(Laboratory.1,Laboratory.3,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
#p-low Null Go, accept Ha
#TAT averages of laboratory1 and laboratory3 are not Equal

t.test(Laboratory.1,Laboratory.4,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
#p-low Null Go, accept Ha
#TAT averages of laboratory1 and laboratory4 are not Equal

t.test(Laboratory.2,Laboratory.3,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
#p-low Null Go, accept Ha
#TAT averages of laboratory2 and laboratory3 are not Equal

t.test(Laboratory.2,Laboratory.4,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
#p-low Null Go, accept Ha
#TAT averages of laboratory2 and laboratory4 are not Equal

t.test(Laboratory.3,Laboratory.4,alternative = "two.sided",conf.level = 0.95,correct = TRUE)#two sample T.Test
#p-low Null Go, accept Ha
#TAT averages of laboratory2 and laboratory4 are not Equal

