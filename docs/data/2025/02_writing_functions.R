
# function to calculate the mean
mean_formula <- function(vec = c()){
  
  # add all the elements together
  sum_total <- 0
  for(i in vec){
    sum_total <- sum_total + i
  }
  
  # divide by the number of elements
  m <- sum_total / length(vec)
  m
}

# function to calculate the median
median_formula <- function(vec = c()){
  
  # sort to values highest to lowest
  vec <- sort(vec)
  vecl <- length(vec)
  
  # check whether the length of the vector if odd or even
  if(round( length(vec) / 2 ) == length(vec) / 2){ # for even numbers
    # take the mean of the two values in the middle
    mean(c( vec[vecl/2] , vec[(vecl/2) + 1] ))
  } else { # for odd numbers
    vec[(vecl/2)+1]
  }

}

# function to calculate the mode
mode_formula <- function(vec = c()){
  
  # for every element, we need to know how frequent each value appears
  freq_table <- data.frame(value = c(), freq = c())
  # loop 1
  for(i in unique(vec)){
    freq_table <- rbind(freq_table, data.frame(value = i, freq = length(which(vec == i))))
  }
  
  row <- which(freq_table$freq == max(freq_table$freq))
  # note there can be multiple modes
  freq_table$value[row]
  
}

# function to calculate the s.d.
sd_formula <- function(vec = c()){
  
  #1. Calculate the sample mean
  m <- mean_formula(vec)
  
  #2. Square the deviations from the mean
  #3. Calculate the sum of squares
  ssd <- sum((m - vec)^2)
  
  #4. Calculate average squared differences (apply the n-1 correction)
  variance <- ssd / (length(vec) - 1)
  
  #5. Unsquare to get the standard deviation
  sd <- sqrt(variance)
  
  sd
}

test <- c(1:5, 6, 6, 7, 10)
test

mean_formula(test)
mean(test)

median_formula(test)
median(test)

mode_formula(test)
# base R doesn't have a mode function, but see here: https://www.codecademy.com/learn/learn-r/modules/r-stats-mean-median-mode/cheatsheet#

sd_formula(test)
sd(test)
