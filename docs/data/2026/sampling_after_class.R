# Sampling in practice 1. Consolidation of R programming skills
# 2026-11-16 - Adam Kocsis

################################################################################
# I. Random numbers are based on the sample() function
################################################################################

# random order
vec <- 1:10
sample(vec)

# different every single time
sample(vec)
sample(vec)
sample(vec)
sample(vec)

# we can pick things from it
sample(vec, 2) # without replacement
# sample(vec, 15) # error without replacement
sample(vec, 15, replace=TRUE) # with replacement

# smaller 
sample(vec, 4, replace=TRUE)

################################################################################
# II. Mean estimation 1
################################################################################

# The population has infinite elements!
# From an infinite number of values we take out some: this is our sample.
# We are going to approximate this infinite number with a very large number
# of elements. This will be our 'pseudopopulation'.

#-------------------------------------------------------------------------------
# Length measurements of imaginary trilobites
# 1: read in the data from here:
# https://fau-paleo.github.io/rconsolidation/data/2026/pseudopopulation.rds
pop <- readRDS("/mnt/sky/Dropbox/Teaching/FAU/RConsolidation/2026/2026-11-16/in_class/sampling/pseudopopulation.rds")


#-------------------------------------------------------------------------------
# 2: generate a sample from it with 25 elements!
one <- sample(pop, 25)
mean(one)
hist(one)

# with 10, more variance of mean
one <- sample(pop, 10)
mean(one)
hist(one)

# with 2000, less variance in mean
one <- sample(pop, 2000)
mean(one)
hist(one)



#-------------------------------------------------------------------------------
# 3: sample size dependence
# Write a for loop and in it:
# a. create random samples with the following number of elements in the sample
# b. tabulate the means
sizes <- c(2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000, 20000, 50000)

# results in this container
means <- rep(NA, length(sizes))

# for every size
for(i in 1:length(sizes)){
  # for every size
  one <- sample(pop, sizes[i])
  # store
  means[i] <- mean(one)
}
means


# the means of means be somewhere in between
mean(means)
# Plot the resulting means as a function of sample size! What do you see?
plot(x=sizes, y=means, log="x")
abline(h=mean(means))


#-------------------------------------------------------------------------------
# 4: Repeated sampling: 
# Use a for loop to repeat the sampling!, Take 200 samples, with n=100 and tabulate the mean 
trials <- 200
mean500 <- rep(NA, trials)

for(i in 1:trials){
  one <- sample(pop, 500)
  mean500[i] <- mean(one)
}


# result: a vector with 200 values
# What is the mean of means?
mean(mean500)
# What is the standard deviation
sd(mean500)
# How are the results distributed?
hist(mean500)


#-------------------------------------------------------------------------------
# This sd is actually what we call the 'standard error of the mean':
# this is the expected deviation of a sample's mean that arises form the
# fact that we only know a subset of the population.
# Here we simulated this because we could take multiple, independent samples
# from our 'pseudopopulation' but in real world we usually have to estimate
# this from a single sample.
#-------------------------------------------------------------------------------

# Standard Error of the Mean
sd(one)/sqrt(500)


# 5: combine 3 and 4 to plot the sample size dependence of
# the standard error! This can be done with two for loops, nested in each
# other.

# outer loop: different samples sizes

	# inner loop: repeated sampling

#-------------------------------------------------------------------------------
# Can we estimate the SEM from a sample?
