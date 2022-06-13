#Load Library
library(openintro)
#Load Dataset
BloodPressure
#View first few lines of dataset
head(BloodPressure)
#View key information of dataset
str(BloodPressure)
#Mean (Population)
mu <- mean(BloodPressure$Before)
mu
#Mean (Sample)
mu0 <- mean(BloodPressure$After)
mu0
#Standard Deviation of the Sample
sd <- sd(BloodPressure$After)
sd
#Standard Error of the Sample
SE.After <- sd(BloodPressure$After) / sqrt(length(BloodPressure$After))
SE.After
#Calculate z parameters
mu0 <- 130.28 # Specify the mean
alpha <- 0.05 # Specify the significance level
sigma <- 7.960946 # Sample standard deviation
n <- nrow(BloodPressure) # Get the sample size
#Calculate z
z<-(mu0-mu)/(sigma/sqrt(n))
z
#Calculate p-value
2*pnorm(abs(z),lower.tail=FALSE)
