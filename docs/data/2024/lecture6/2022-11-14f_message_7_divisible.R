# Solution to : https://adamtkocsis.com/rkheion/Exercises/2022-11-14f_message_7_divisible.html

# Part 1

# Step 1. Implement code that works with specifics

# the counter to be incremented to 1000
counter <- 1

while(counter <= 1000){
  # only print message if counter is divisible by 7
  if(counter%%7==0){
    message(counter)
  }
  
  # increment counter
  counter <- counter + 1
}

# Part 2.

# Step 1. Extract generalizable components, replace hard coded values with variables

# the variables
n <- 500
x <- 23

# the counter to be incremented to 1000
counter <- 1

while(counter <= n){
  # only print message if counter is divisible by 7
  if(counter%%x==0){
    message(counter)
  }
  
  # increment counter
  counter <- counter + 1
}



# Step 2. Make it a function

Multiples <- function(x, n){

  # the counter to be incremented to 1000
  counter <- 1

  while(counter <= n){
    # only print message if counter is divisible by 7
    if(counter%%x==0){
      message(counter)
    }

    # increment counter
    counter <- counter + 1
  }


}


# Step 3. Document!

#' Printing number until n which are divisible by x
#' 
#' @param x the numbers will be multiples of
#' @param the largest number that can be printed
#' @return The function has no return value.
#' @examples 
#' Multiples(x=7, n=1000)
Multiples <- function(x, n){
  
  # the counter to be incremented to 1000
  counter <- 1
  
  while(counter <= n){
    # only print message if counter is divisible by 7
    if(counter%%x==0){
      message(counter)
    }
    
    # increment counter
    counter <- counter + 1
  }

  
}

# Step 4. Test and debug!

Multiples(x=7, n=1000)
Multiples(x=7, n=100)
Multiples(x=3, n=100)
Multiples(x=3, n=-10)

# defend against infinite loops
Multiples(x=3, n="a")

#' Printing number until n which are divisible by x
#'
#' @param x the numbers will be multiples of
#' @param the largest number that can be printed
#' @return The function has no return value.
#' @examples
#' Multiples(x=7, n=1000)
Multiples <- function(x, n){

  if(!is.numeric(n)) stop("The n argument has to be numeric. ")

  # the counter to be incremented to 1000
  counter <- 1

  while(counter <= n){
    # only print message if counter is divisible by 7
    if(counter%%x==0){
      message(counter)
    }

    # increment counter
    counter <- counter + 1
  }


}
