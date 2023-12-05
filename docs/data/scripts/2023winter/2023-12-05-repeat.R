# Solution to: https://adamkocsis.github.io/rkheion/Exercises/2023-11-27b_repeat_message_for.html
#' Function to repeat a message a number of times
#'
#' @param x THe message to repeate
#' @param n The number of iterations
#' @return THe function has no return value.
RepMessage <- function(x, n){
  for(i in 1:n){
    message(x)
  }
}

RepMessage("Good!", 5)
