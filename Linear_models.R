library("matrixStats")
library("corrplot")
data = read.csv("red-wine.csv")


######################   Visualization    ####################################################

head(data)
tail(data)
corrplot(cor(data))
pairs(data)
hist(data$quality, col="red")
for (i in 1:11) 
  plot(quality ~ data[,i], xlab=colnames(data)[i], data = data)
##All pairwise corelation coefficients are less then 0.95
#looking at the pairs plot, it seems that linear regression is a resonable choice.




######################    Linear Regression    #################################################


l_r_model = lm(quality ~ . , data = data)
summary(l_r_model)
predicted.values = l_r_model$fitted.values
observed.value   = data[,12]
train.rmse    = sqrt(   mean( (observed.value - predicted.values)^2 )   )
train.rmse


######################   Cross Validation   ###############################################

no.of.folds = 10
index.values = sample(1:no.of.folds, size = dim(data)[1], replace = TRUE)
head(index.values)
table(index.values)/dim(data)[1]
test.mse = rep(0, no.of.folds)
for (i in 1:no.of.folds)
{
  index.out            = which(index.values == i)                            
  left.out.data        = data[  index.out, ]                                  
  left.in.data         = data[ -index.out, ]                                  
  tmp.lm               = lm(quality ~ ., data = left.in.data)                 
  tmp.predicted.values = predict(tmp.lm, newdata = left.out.data)             
  test.mse[i]          = mean((left.out.data[,12] - tmp.predicted.values)^2)  

}

test.mse
test.rmse = sqrt(mean(test.mse))
test.rmse

#############################################################################################

##########         Feature Selection Models        #########################################

############################################################################################



























