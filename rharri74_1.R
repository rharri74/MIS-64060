##Read in Housing data from Kaggle (https://www.kaggle.com/c/house-prices-advanced-regression-techniques/data?select=test.csv)
assignment1data <- read.csv("test.csv")

##Descriptive statistics for Quantitative (Lot Area) and Cateogrical (Exterior1st)
summary(assignment1data$LotArea)
summary(assignment1data$Exterior1st)

##Transform TotalBsmtSF to round to the nearest hundred squarefootage
assignment1data$TotalBsmtSF <- round(assignment1data$TotalBsmtSF,-2)
print(assignment1data$TotalBsmtSF)

library("ggplot2")
##Bar graph of count by Exterior1st
ggplot(assignment1data, aes(x=Exterior1st)) + geom_bar()
##Scatterplot of YearBuilt and LotArea
ggplot(assignment1data, aes(x=YearBuilt, y=LotArea)) + geom_point()

