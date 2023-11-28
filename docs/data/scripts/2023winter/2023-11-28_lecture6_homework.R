# Homework solutions: 2023-11-28

# 1. Repetition of values: Function practice: Repeat a value a number of times
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-26d_repeat_values.html

# with aggregation
n <- 10
counter <-1

# store the value
container<- NULL

while(counter <=n){
  container <- c(container, "This is fine!")
  counter <- counter + 1
}

# with replacement 
n <- 10
counter <-1

# store the value
container<- rep(NA, n)

# simple 
while(counter <=n){
  container[counter] <- "This is fine!"
  counter <- counter + 1
}




# Part 2: writing  function from it

#' Function to repeat value a number of times
#'
#' @param x The value to repeat.
#' @param n The number of repetitions
Repeat <- function(x, n){
#  x <- "This is fine!"
#  n <- 10
  
	# optional - still nice to have it
#  if(!is.numeric(n)) stop("Please select a numeric 'n'!")

  # loop counter, and index
  counter <-1

  # store the value
  container<- rep(NA, n)
  
  while(counter <=n){
    container[counter] <- x
    counter <- counter + 1
  }
  
  return(container)
}

# calling to the functionn
Repeat(x="TheThing", n=5)
# a correct error
Repeat(x="something", n="a")
