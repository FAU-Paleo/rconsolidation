

dunif(1, -2, 2)
dunif(1.5, -2, 2)

curve( dunif(x, -2, 2), from = -4, to = 4 )


dnorm(2, mean = 0, sd = 1)
dnorm(0.2, mean = 0, sd = 1)

# density
curve( dnorm(x, mean = 0, sd = 1), from = -4, to = 4 )

# make it a bit fancier
curve( dnorm(x, mean = 0, sd = 1), from = -4, to = 4, bty="n", 
       lwd = 3, col = "#84CA72", ylab = "Relative probability")
abline(v = 0, lwd = 2, col = "grey", lty = 2)

# cumulative distribution function (% of values < than)
pnorm(0, mean = 0, sd = 1)
pnorm(1, mean = 0, sd = 1)

curve( pnorm(x, mean = 0, sd = 1), from = -4, to = 4, bty="n", 
       lwd = 3, col = "#84CA72", ylab = "Cumulative probability")
abline(h = 0.5, lwd = 2, col = "grey", lty = 2)

# quantile function (inverse of cumulative distribution)

pnorm(0, mean = 0, sd = 1)
qnorm(0.5, mean = 0, sd = 1)

qnorm(0.8413447, mean = 0, sd = 1) 

# generate random numbers
n = 10000
rnorm(n, mean = 0, sd = 1)
rn = rnorm(n, mean = 0, sd = 1)

hist(rn, prob = TRUE, ylim = c(0,1), xlim =c(-4, 4), xlab = "x", ylab = "Relative probability", main = "")
curve( dnorm(x, mean = 0, sd = 1), bty="n", ylim = c(0,1), 
       lwd = 3, col = "#84CA72", add = TRUE)

# reproduce your results
set.seed(123)

