# Solution to the exercise: Replacing values based on divisibility
# https://adamtkocsis.com/rkheion/Exercises/2023-11-26-replace_divisibility.html

################################################################################
# Solution 1. with while(): as many iterations, as many 7-divisible values there are!
vec <- -100:100

i <- 7

# the basic chunk of code that gets iterated:
vec[i] <- 1000
i<- i + 7
vec[i] <- 1000
i<-i + 7
vec[i] <- 1000


# Actual solution
vec <- -100:100

# start replacement index with 7
i<- 7

# repeat until condition is not met
while(i <= length(vec)){
	# replace the
  vec[i] <- 1000

	# increment with 7
  i<- i + 7
}

################################################################################
# Solution 2. with for(): as many iterations, as many values there are in the vector
vec <- -100:100 

# for every value in the vector
for(i in 1:length(vec)){

	# if condition is met, replace
  if(i%%7==0) vec[i] <- 1000
}


################################################################################

# Solution 3. R-ish solution (vectorized)
vec <- -100:100

# create a sequence where replacement needs to happen and store it
index <- seq(7, length(vec), by=7)

# vectorized replacement
vec[index]<- 1000
