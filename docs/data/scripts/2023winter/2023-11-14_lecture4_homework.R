################################################################################
# 1. Printing numbers from 1 to 10
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-14_printing_numbers.html
# simple printing of something 
x<- 1
message(x)

# first value to be printed
x <- 1

# repeat with while, until correct number is reached
while(x <= 10){
	# execute printing
	message(x)
	# increment
	x <- x + 1
}

################################################################################
# 2. Multiplication with a while() loop
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-14b_multiplication_while.html

# example multiplication
# 3*4
# addition happens 3 (4-1) times
3 + 3 + 3 + 3 

# additin happens 4 times, with identity
# x = 0 + x # is always true!

# the result
0 + 3 + 3 + 3 +3


# programmed version
a <- 3
b <- 4

# the aggregator variable
result <-0

# adding a value to it in an iterative way
# same instruction is repeated b times!
result <- result + a
result <- result + a
result <- result + a
result <- result + a

# actual implementation
# input numbers
a <- 3
b <- 4

# result of calculation
result <-0

# keep tracok of interation
counter <- 1

# repeat until correct number of iterations is reached
while(counter <= b){
	# actual calculation
	result <- result + a
	# increment loop counter
	counter <- counter +1
}

# same as this. Use this always - the solution above is not efficient,
# just a good didactic case!
a * b

################################################################################
# 3. Calculating n!
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-14c_factorial.html

# a. manual solution without iteration...
# Example number of iterations
n <- 4

# result aggregator
# using the multiplicative identity: 1
# x= x * 1
result <- 1 

# counter
x <- 1

# the repeating set of instructions will yield the correct result
# for correct x
result <- result * x
x <- x + 1
result <- result * x
x <- x + 1
result <- result * x
x <- x + 1
result <- result * x

# b. actual implementation
# number of iterations
n <- 5

# result aggregator
result <- 1 

# counter
x <- 1

# iteration
while(x <= n){
  result <- result * x
  x <- x + 1
}

result


# Part II. Making a function from this.

Fact <- function(n){
  # number of iterations
  # n <- 5
  
  # result aggregator
  result <- 1 
  
  # counter
  x <- 1
  
  while(x <= n){
    result <- result * x
    x <- x + 1
  }
  # the factorial result
  return(result)
}

# testing
Fact(4)
Fact(12)

# compare with bulit-in factorial function
factorial(4)
factorial(12)

# Part III.
# incorrect input - needs defense
Fact(-1)
Fact("a")

# Note: the factorial() function has a generalized version
# for other numbers than non-negative integers. If interested,
# search for the description of the gamma function!


#' Factorial function
#' 
#' Calculating the factorial of a positive integer
#' @param n input number n!
#' @return n! for numeric inputs or missing value.
Fact <- function(n){
  # numeric
  if(!is.numeric(n)) return(NA)
  # non-negative
  if(n < 0) return(NA)
  # integers 
  if(!n%%1==0) return(NA)
  
  # number of iterations
  # n <- 5
  
  # result aggregator
  result <- 1 
  
  # counter
  x <- 1
  
  while(x <= n){
    result <- result * x
    x <- x + 1
  }
  # the factorial result
  return(result)
}

# testing our improved function
Fact(5)
Fact(5.3)
Fact(-1)
Fact("a")


########################################x
# 4. Repeat message n times
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-14e_repeat_message.html

# Part 1. 
# single implementation
x <- "My awesome message"
message(x)


# free-standing, unwrapped implementation
x <- "My awesome message"
n <-4
counter <- 1

# repat as many times as necessary
while(counter <= n){
  message(x)
  counter <- counter + 1 
}

# Part 2. 
# function definition
RepMessage <- function(x, n ){
  # x <- "My awesome message"
  # n <-4
  counter <- 1
  
  while(counter <= n){
    message(x)
    counter <- counter + 1 
  }
}

# Part 3. test the function
RepMessage(x="Something.", n=3)
RepMessage(x="Something.", n=-9)
# RepMessage(x="Something.", n="a") # very wrong, produces infite loop!!
RepMessage(x="Coolness", n=5) # should repeat 5 times
RepMessage(x="Nope!", n=0) # should not print anything


# Improved!

#' Repeated message
#' 
#' The function repeats a character value a number of times
#' @param x Character string to repeat
#' @param n Number of repetitions
#' @return The function has no return value
RepMessage <- function(x, n ){
  # x <- "My awesome message"
  # n <-4
  if(!is.numeric(n)) stop("Non-numeric input to 'n'.")
  
  counter <- 1
  
  while(counter <= n){
    message(x)
    counter <- counter + 1 
  }
}

# weird input > 
RepMessage(x="Something.", n="a") # very wrong, correctly throws an error
RepMessage(x="Something.", n=4.4)
RepMessage(x="Something.", n=-4.2)

################################################################################
# 5. Printing values divisible by 7
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-14f_message_7_divisible.html
# Later...

################################################################################
# 6. Estimate Euler’s number with a given number of iterations
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-26a_euler_function.html

#' Calculate Euler's number
#' 
#' Calculate the constant with a given number of iteration
#' @param n number of iterations
#' @return The constant as a single number
Euler <- function(n){
  # number of repetitions
  # n <- 5
  # defend against garbage
  # numeric
  if(!is.numeric(n)) return(NA)
  # non-negative
  if(n < 0) return(NA)
  # integers 
  if(!n%%1==0) return(NA)
  
  # initialization
  count <- 0
  estimate <- 0
  
  # start iteration
  while(count < n){
    # the estimate
    estimate <- estimate + 1 / factorial(count)
    # loop counter increment
    count <- count + 1
  }
  return(estimate)
}

# check precision - never exactly 0!
Euler(100) - exp(1)


