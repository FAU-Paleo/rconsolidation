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

#-------------------------------------------------------------------------------
# 2: generate a sample from it with 25 elements!


#-------------------------------------------------------------------------------
# 3: sample size dependence
# Write a for loop and in it:
# a. create random samples with the following number of elements in the sample
sizes <- c(2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000, 20000, 50000)

# b. tabulate the means

# Plot the resulting means as a function of sample size! What do you see?


#-------------------------------------------------------------------------------
# 4: Repeated sampling: 
# Use a for loop to repeat the sampling!, Take 200 samples, with n=100 and tabulate the mean 

# result: a vector with 1000 values
# What is the mean of means?
# What is the standard deviation
# How are the results distributed?


#-------------------------------------------------------------------------------
# This sd is actually what we call the 'standard error of the mean':
# this is the expected deviation of a sample's mean that arises form the
# fact that we only know a subset of the population.
# Here we simulated this because we could take multiple, independent samples
# from our 'pseudopopulation' but in real world we usually have to estimate
# this from a single sample.
#-------------------------------------------------------------------------------
# 5: combine 3 and 4 to plot the sample size dependence of
# the standard error! This can be done with two for loops, nested in each
# other.

# outer loop: different samples sizes

	# inner loop: repeated sampling

#-------------------------------------------------------------------------------
# Can we estimate the SEM from a sample?
