Customer_Order_Form<-read.csv(file.choose())
View(Customer_Order_Form)
attach(Customer_Order_Form)
#due to both of the variables being discrete we will use the chi-square test
# now we have edited the given data frame and replaced the Error Free with 1 & Defective with 0
#for better data processing
library(readxl)
Q4 <- read_excel("D:/Data Science study/assignment/Sent/3/Q4.xlsx")
View(Q4)
stacked_data<-stack(Q4)
View(stacked_data)
attach(stacked_data)
table(stacked_data$ind,stacked_data$values)
chisq.test(table(stacked_data$ind,stacked_data$values))
#We got p-value > 0.05
#Hence p-high Null fly, accept Ho hypothesis.
#Hence all the proportions are equal % defects does not varies from region to region
