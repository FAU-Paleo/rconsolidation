# Solution to: https://adamtkocsis.com/rkheion/Exercises/2022-11-14e_repeat_message.html

# Part 1.
# Step 1. printing a simmple message
message("My awesome message")


# Step 2. Using a while loop to print the message n number of times
n <- 7

# initialize a counter
counter <-1 

while(counter <=n){
  message("My awesome message")
  counter = counter + 1
}

# Part 2.
# Step 1. Making a generalized solution: replacing hard-coded values with variables

# The variables controlling the function
n <- 7
x <- "My awesome message 2"


# initialize a counter
counter <-1 

while(counter <=n){
  message(x)
  counter = counter + 1
}


# Step 2. Encapsulating code into a function (variables controlling it become arguments)

RepMessage <- function(x, n){
  
  # while loop idom starts with this
  counter <- 1  # 
  
  # repeat instruction n times
  while(counter <=n){
    message(x)
    counter = counter + 1
  }
  
}

# Step 3. Documenting
#' Repeat messaging n times
#' @param x Message
#' @param n Number of times
#' @return The function has no return value
RepMessage <- function(x, n){

  # while loop idom starts with this
  counter <- 1  #

  # repeat instruction n times
  while(counter <=n){
    message(x)
    counter = counter + 1
  }

}

# Step 4. Testing
RepMessage(x="Wonderful!", n=4)
RepMessage("Wonderful!", 3)
RepMessage("Wonderful!", n=-1)

# with given examples
RepMessage(x="Coolness", n=5) # should repeat 5 times
RepMessage(x="Nope!", n=0) # should not print anything


# This leads to an infinite loop!!!
RepMessage("Wonderful!", n="a")


# Step 5. Debug + test cycles
# debug -> test -> debug -> test

#' Repeat messaging n times
#' @param x Message
#' @param n Number of times
#' @return The function has no return value
RepMessage <- function(x, n){

  # defense against the infinite loop
  if(!is.numeric(n)) stop("The argument n needs to be numeric.")

  # while loop idom starts with this
  counter <- 1  #

  # repeat instruction n times
  while(counter <=n){
    message(x)
    counter = counter + 1
  }

}

# produces a correct error message
RepMessage("Wonderful!", n="a")
