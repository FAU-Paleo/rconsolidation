# you can experiment with different seeds
set.seed(123)

# 1. Normal distribution

## parameters of the distribution
mean = 0
sd = 2

# plot the distribution
x <- seq(-10, 10, length = 100)
y <- dnorm(x, mean = mean, sd = sd)
plot(x, y, type = "l", lwd = 2)
curve(dnorm(x, mean = -2, sd = sd), add = TRUE, lwd = 2, col = 2)

## cumulative probability
pnorm(0, mean = mean, sd = sd)

## quantiles
qnorm(0.975, mean = mean, sd = sd)
qnorm(0.025, mean = mean, sd = sd)

## random draws
sample <- rnorm(100, mean = mean, sd = sd)
sample
hist(sample, prob = TRUE) # add prob = TRUE to plot relative probabilities instead of frequencies
curve(dnorm(x, mean = mean, sd = sd), add = TRUE, lwd = 2, col = 2)

# 2. Exponential distribution

## parameters of the distribution
lambda = 3 # lambda = the rate parameter, mean of the distribution will be 1/rate

## plot the distribution
x <- seq(0, 2, length = 100)
y <- dexp(x, rate = lambda)
plot(x, y, type = "l", lwd = 2)
curve(dexp(x, rate = 2), add = TRUE, lwd = 2, col = 2)

## cumulative probability
pexp(1/lambda, rate = lambda) # note for the mean of an exponential distribution this is always 0.63

## quantiles
qexp(0.975, rate = lambda)
qexp(0.025, rate = lambda)

## random draws
sample <- rexp(100, rate = lambda)
hist(sample, prob = TRUE) # add prob = TRUE to plot relative probabilities instead of frequencies
curve(dexp(x, rate = lambda), add = TRUE, lwd = 2, col = 2)

# 3. Uniform distribution

## parameters of the distribution
min = 3 
max = 10

## plot the distribution
x <- seq(0, 12, length = 100)
y <- dunif(x, min = min, max = max)
plot(x, y, type = "l", lwd = 2)
curve(dunif(x, min = 2, max = 11), add = TRUE, lwd = 2, col = 2)

## cumulative probability
punif(mean(c(min, max)), min = min, max = max) # this should always be 0.5 for the mean

## quantiles
qunif(0.975, rate = lambda)
qunif(0.025, rate = lambda)

## random draws
sample <- runif(1000, min = min, max = max)
hist(sample, prob = TRUE) # add prob = TRUE to plot relative probabilities instead of frequencies
curve(dunif(x, min = min, max = max), add = TRUE, lwd = 2, col = 2)

# 4. Lognormal distribution

## parameters of the distribution
meanlog = 0
sdlog = 1

# plot the distribution
x <- seq(0, 10, length = 100)
y <- dlnorm(x, meanlog = meanlog, sdlog = sdlog)
plot(x, y, type = "l", lwd = 2)
curve(dlnorm(x, meanlog = 1, sdlog = sdlog), add = TRUE, lwd = 2, col = 2)

## cumulative probability
plnorm(1, meanlog = meanlog, sdlog = sdlog)

## quantiles
qlnorm(0.975, meanlog = meanlog, sdlog = sdlog)
qlnorm(0.025, meanlog = meanlog, sdlog = sdlog)

## random draws
sample <- rlnorm(10000, meanlog = meanlog, sdlog = sdlog)
curve(dlnorm(x, meanlog = meanlog, sdlog = sdlog), add = F, lwd = 2, col = 2, from = 0, to = max(sample)*0.5)
hist(sample, prob = T, add = TRUE, breaks = 20)

# 5. Gamma distribution

## parameters of the distribution
alpha = 1 
beta = 1

## plot the distribution
x <- seq(0, 12, length = 100)
y <- dgamma(x, shape = alpha, rate = beta)
plot(x, y, type = "l", lwd = 2)
curve(dgamma(x, shape = 2, rate = 2), add = TRUE, lwd = 2, col = 2)

## cumulative probability
pgamma(1, shape = alpha, rate = beta) # when alpha = 1, the distribution is equivalent to an exponential

## quantiles
qgamma(0.975, shape = alpha, rate = beta)
qgamma(0.025, shape = alpha, rate = beta)

## random draws
sample <- rgamma(1000, shape = alpha, rate = beta)
hist(sample, prob = TRUE) # add prob = TRUE to plot relative probabilities instead of frequencies
curve(dgamma(x, shape = alpha, rate = beta), add = TRUE, lwd = 2, col = 2)

# 6. Binomial distribution
## this one is quite different because we're plotting the distribution of successful outcomes
## for more info: https://www.statology.org/plot-binomial-distribution-r/

## parameters of the distribution
size = 20
prob = 0.3

## plot the distribution
x <- 0:size
y <- dbinom(x, size = size, prob = prob)
plot(x, y, lwd = 2, type = "h")
lines(dbinom(x, size = size, prob = 0.5), lwd = 2, col = 2, type = "h")

## cumulative probability
pbinom(5, size = size, prob = prob) # when alpha = 1, the distribution is equivalent to an exponential

## quantiles
qbinom(0.975, size = size, prob = prob)
qbinom(0.025, size = size, prob = prob)

## random draws
sample <- rbinom(1000, size = size, prob = prob)
hist(sample+1, prob = TRUE)
lines(dbinom(x, size = size, prob = prob), lwd = 2, col = 2, type = "h")


