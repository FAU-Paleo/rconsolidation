# repeat message
message("My message")


# what is getting repeated and the nubmer of repetitions
x <- "Important"
n <- 5

#' Repeat a message a number of times
#' 
#' @param x Character string, the message.
#' @param n Number of repetitions
#' @return The function has no return value.
RepMessage <- function(x, n){
  if(is.numeric(n) & n>=1){
    for(i in 1:n) message(x)
  }
}


RepMessage(x="Coolness", n=5) # should repeat 5 times
RepMessage(x="Nope!", n=0) # should not print anything
RepMessage(x="Nope!", n=-4) # should not print anything
RepMessage(x="Nope!", n="five") # should not print anything

