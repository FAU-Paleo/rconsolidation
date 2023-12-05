# Solution to https://adamkocsis.github.io/rkheion/Exercises/2022-11-26c_euler_vector.html
# 2023-12-05

########################################----------------------------------------
# Pattern 1: Aggregation
# initialization
count <- 0
estimate <- 0

#  Set the container to either of these
result <- NULL
# result <- c()
# result <- numeric()

# start iteration
while(count < 15){
  # the estimate
  estimate <- estimate + 1 / factorial(count)
  # display the estimate
  # message(estimate)
  result <- c(result, estimate)
  # loop counter increment
  count <- count + 1
}
result

########################################----------------------------------------
# Pattern 2: replacement of pre-allocated space
# initialization
count <- 0
estimate <- 0

# the number of iteration
n<- 15

# placeholder for the results
result <- rep(NA, n)

# start iteration
while(count < n){
  # the estimate
  estimate <- estimate + 1 / factorial(count)
  # display the estimate
  # message(estimate)
  # loop counter increment
  count <- count + 1
  
  result[count] <- estimate
}
result

