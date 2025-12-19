# Solutions to exercise:  Replacing values based on divisibility
# https://adamtkocsis.com/rkheion/Exercises/2023-11-26-replace_divisibility.html
a <- -100:100

# Solution 1a. Procedural (for loop)
for(i in 1:length(a)){
  if(i %% 7 == 0){
    a[i] <- 1000
  }
}

# Solution 1b. Procedural (hile loop)
d <- -100:100
i <- 1
while(i <= length(d)){
  if(i %% 7 == 0){
    d[i] <- 1000
  }
  # increment
  i <- i + 1
}

# same as earlier
a==d


# Solution 2. Vectorized (hile loop)
# vectorized solution
b <- -100:100
b[seq(7, length(b), by=7)] <- 1000

# same as earlier
a==b
