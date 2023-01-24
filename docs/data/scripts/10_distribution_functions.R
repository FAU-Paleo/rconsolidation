
# density
curve( dnorm(1, mean = 0, sd = 1), from = -4, to = 4 )

# make it a bit fancier
curve( dnorm(x, mean = 0, sd = 1), from = -4, to = 4, bty="n", 
       lwd = 3, col = "#84CA72", ylab = "Relative probability")
abline(v = 0, lwd = 2, col = "grey", lty = 2)

# cumulative distribution function (% of values < than)
pnorm(0, mean = 0, sd = 1)

curve( pnorm(x, mean = 0, sd = 1), from = -4, to = 4, bty="n", 
       lwd = 3, col = "#84CA72", ylab = "Cumulative probability")
abline(h = 0.5, lwd = 2, col = "grey", lty = 2)

# quantile function (inverse of cumulative distribution)
qnorm(0.5, mean = 0, sd = 1) 

# generate random numbers
n = 10
rnorm(n, mean = 0, sd = 1)
rn = rnorm(n, mean = 0, sd = 1)

hist(rn, prob = TRUE, ylim = c(0,1), xlim =c(-4, 4), xlab = "x", ylab = "Relative probability", main = "")
curve( dnorm(x, mean = 0, sd = 1), bty="n", ylim = c(0,1), 
       lwd = 3, col = "#84CA72", add = TRUE)

# reproduce your results
set.seed(123)

