BuyerRatio <- read.csv("E:/Data Science Assignment Questionair/Data Science/Assignment Question/Assignment-3 Hypothesis Testing/BuyerRatio.csv")
View(BuyerRatio)
attach(BuyerRatio)
# Now let us find the ratio of male-female buyers from each region
East<-(50/435)
West<-(142/1523)
North<-(131/1356)
South<-(70/750)

#Now we converted the data in exceland created a new file for easy use
#Lets import the new file
Q3<-read.csv(file.choose())
View(Q3)
attach(Q3)
table(Buyer,Region)
chisq.test(table(Buyer,Region))
#We got p-value > 0.05
#Hence p-high Null fly, accept Ho hypothesis.
#Hence all the proportions of buyer ratio across 4 region are similar.
