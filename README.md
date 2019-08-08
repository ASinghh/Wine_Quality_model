# Wine Quality model
The goal of this project is to model quality of wines based on the checmical attributes,

1. fixed acidity
2. volatile acidity
3. citric acid 
4. residual sugar 
5. chlorides
6. free sulfur dioxide
7. total sulfur dioxide 
8. density 
9. pH
10. sulphates 
11. alcohol Output variable

The data is collected using sensors. Seperated models are used for red and white wines. Quality is measured on a scale of 0-10. Linear regression with standard LHIN testing is done for both the datasets. Model is written in Python and R.


## Modelling Software
R, Python

### R Packages Used



## Hardware
* i7 Quadcore Processor
* 16 GBs RAM
 


# Results
We Observed the following results from the modelling exercise

## Test RMSE
* OLS     0.722622
* Lasso   0.669559
* Ridge   0.679769
* PCR     0.694552

## Importance of predictiors
The 5 most important predictors, based on their P-scores, in their order of importance, are  

1. Avg_surf aceArea,
2. FP067,
3. NumNonHBonds,
4. FP068,
5. FP091.

# Conclusion
 For our use-case, we found Ordinary Least Square method to be the most effective Linear method to model chemical solubility.
 For detailed project report, please read <strong>predicting-chemical-solubility.pdf</strong>.







