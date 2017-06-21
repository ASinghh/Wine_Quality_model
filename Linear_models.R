library("matrixStats")
library("corrplot")
data = read.csv("red-wine.csv")
##lets take a look
head(data)
corrplot(cor(data))
## all correlation coefficients are well below limits


