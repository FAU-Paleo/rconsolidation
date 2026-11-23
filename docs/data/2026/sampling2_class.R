# Sampling in practice 2. Consolidation of R programming skills
# 2026-11-23 - Adam Kocsis

# What we were using is actually identical to using rnorm
n <- 100
samp <- rnorm(n, 50, 8)


# 1. Repeat the exercise to plot the sample size dependence of
# the standard error, but instead of using sample, use the code above!
sizes <- c(2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000, 20000, 50000)
trials <- 200

# outer loop: different samples sizes

	# inner loop: repeated sampling (trials)



# So far we have been using a gaussian (normal) distribution.
# 2. What function is used to generate values from a uniform distribution?
# Generate a 100 element sample from a uniform distribution, with minimum being 0, and maximum being 1000!

# make a histogram, calculate the mean

# 3. Repeat the sampling 200 times! How are the means distributied?

# 4. Created a 200-element sample with an exponential distribution (rate=0.1). Make a histogram and calculate the mean!

# 5. Created repeated samples with an exponential distribution. How are the means distributed then?
