install.packages("nortest")
library(nortest)
f<-read.csv(file.choose())
attach(f)
str(f)
ad.test(f$Unit.A)
ad.test(f$Unit.B)
#data of Y1 & Y2 are normal but external conditions are not same so we will check variance is equal or not
var.test(Unit.A,Unit.B)
#p-high Null fly i.e. accept Ho
#go for 2 sample T-test for equal variance.

t.test(Unit.A,Unit.B,alternative = "two.sided",conf.level = 0.95,correct = TRUE)
#the means are equal hence we accept null hypothesis.