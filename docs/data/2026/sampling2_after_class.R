# Sampling in practice 2. Consolidation of R programming skills
# 2026-11-23 - Adam Kocsis

# What we were using is actually identical to using rnorm
n <- 100
samp <- rnorm(n, 50, 8)
mean(samp)
sd(samp)


# 1. Repeat the exercise to plot the sample size dependence of
# the standard error, but instead of using sample, use the code above!
sizes <- c(2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000, 20000, 50000)
trials <- 1000

# standard error estimates
ses <- rep(NA, length(sizes))

# outer loop: different samples sizes
for(j in 1:length(sizes)){
  
  # inner loop: repeated sampling
  meanThisSize <- rep(NA, trials)
  
  for(i in 1:trials){
    one <- rnorm(sizes[j], mean=50, sd=8)
    meanThisSize[i] <- mean(one)
  }
  ses[j] <- sd(meanThisSize)
  
}
# last iteration's means
hist(meanThisSize, breaks=30)

# a standard error for every sample size
plot(x=sizes, y=ses, log="x")

# So far we have been using a gaussian (normal) distribution.
# 2. What function is used to generate values from a uniform distribution?
# Generate a 100 element sample from a uniform distribution, 
# with minimum being 0, and maximum being 1000!
?runif
unisamp <- runif(n=100,min=0, max=1000)

# make a histogram, calculate the mean
hist(unisamp)
mean(unisamp)

# 3. Repeat the sampling 200 times! How are the means distributed?
trials <- 200
mean100 <- rep(NA, trials)

for(i in 1:trials){
  one <- runif(n=100,min=0, max=1000)
  mean100[i] <- mean(one)
}

hist(mean100)


# 4. Create a 100-element sample with an exponential distribution (rate=0.1). 
# Make a histogram and calculate the mean!
expsamp <- rexp(1000, rate=0.1)
mean(expsamp)
hist(expsamp)


# 5. Repeat sampling with an exponential distribution. (rate=0.1, 100 element 
# samples), 200 times. How are the means distributed then?
trials <- 200
mean100 <- rep(NA, trials)

for(i in 1:trials){
  one <- rexp(n=100,rate=0.1)
  mean100[i] <- mean(one)
}

hist(mean100)

n<- 100
samp <- rnorm(n, 50, 8)
hist(samp)

################################################################################
# Some additional useful functions

# The values of the Probability Density Function
pdf <-dnorm(x= 20:80, mean=50,sd=8)
plot(20:80, pdf)

# The values of the Cumulative Distribution Function
cdf <-pnorm(q= 20:80, mean=50,sd=8)
plot(20:80, cdf)


