text <- "My awesome message"
n <- 5

count <- 1
while(count <= n){
  message(text)
  count <- count + 1 
}


# Part 2- function definition

#' Plotting a message a number of times
#'
#' @param x The message, a character string. 
#' @param n The number of repetitions (integer number)
#' @return No return value.
RepMessage <- function(x, n){

  # loop counter initialization 
  count <- 1
  
  # iteration
  while(count <= n){
    message(x)
    count <- count + 1 
  }
}

# calling and test
RepMessage("My excellent string", 6)
RepMessage("Adam", 1000)

RepMessage("My excellent string", 6)
RepMessage("My excellent string", 4)



RepMessage("My excellent string", 0)
RepMessage("My excellent string", -1)

# triggers an infinite loop
RepMessage("My excellent string", "three")


#' Plotting a message a number of times
#'
#' @param x The message, a character string. 
#' @param n The number of repetitions (integer number)
#' @return No return value.
RepMessage <- function(x, n){
  # defend again weird ns
  if(!is.numeric(n)) stop("n is not numeric. ")
  
  # loop counter initialization 
  count <- 1
  
  # iteration
  while(count <= n){
    message(x)
    count <- count + 1 
  }
}

RepMessage("My excellent string", 6)
RepMessage("My excellent string", 4)

RepMessage("My excellent string", 0)
RepMessage("My excellent string", -1)

# triggers an infinite loop
RepMessage("My excellent string", "three")



###########################################################################
# Homework 2

# solution 1
count <- 1
while(count <= 1000){
  # logical value is it divisible by 7
  divisible <- count%%7 == 0
  
  # only when divisible
  if(divisible){
    message(count)
  }
  
  count <- count + 1 
}


###################################
# Solution 2
count <- 1
product <- 0

while(product <= 1000){
  # multiplication
  product <- count *7 
 message(product)
  
  # increment
  count <- count + 1
}

##################################

# Solution 2 - better
count <- 1
product <- count * 7

while(product <= 1000){
  message(product)
  # increment
  count <- count + 1
  # multiplication
  product <- count *7 
}

#' Display multiples of a number lower than n
#' 
#' @param x Base of multiplication
#' @param n largest printable number.
#' @return No return value
Multiples <- function(x, n){
  count <- 1
  product <- count * x
  
  while(product <= n){
    message(product)
    # increment
    count <- count + 1
    # multiplication
    product <- count *x 
  }
}

Multiples(x=7, n=100)
Multiples(x=5, n=100)

################################
# 2 * pi * 1 = 360
# pi = 180 
x <- 180
x / 180 * pi

#' Degrees to radians converter
#' 
#' @param x Numeric value in degrees
#' @return value in radians.
DegToRad <- function(x) x / 180 * pi
DegToRad(45)

######################################
1/factorial(11)

estimate <- 1/factorial(0)
estimate <- estimate + 1/factorial(1)
estimate <- estimate + 1/factorial(2)
estimate <- estimate + 1/factorial(3)
estimate <- estimate + 1/factorial(4)
estimate <- estimate + 1/factorial(5)

##############################
estimate <- 0
counter <- 0

while(counter < 20){
  estimate <- estimate + 1/factorial(counter)
  message(estimate)
  counter <- counter + 1
}

##############################
plot(x=0, y=0) # high-level graphical function
plot(x=1, y=1)
plot(x=1, y=3)

plot(x=1, y=1)

plot(x=0, y=0)
points(x=0.5, y=0.5)# individual points
text(x=-0.5, y=-0.5,label="Point2") # 
segments(x0=-0.3, y0=0.3, x1=0.3, y1=0.3)
abline(h=0.2)
abline(v=0.6)
rect(xleft=-0.4, xright=0.4, ybottom=-0.4, ytop=0.4)

?par

plot(x=0, y=0, col="red")
points(x=0.5, y=0.5, col="red")# individual points
text(x=-0.5, y=-0.5,label="Point2", col="red", cex=3) # 

segments(x0=-0.3, y0=0.3, x1=0.3, y1=0.3, col="red")
abline(h=0.2, col="red")
abline(v=0.6, col="red")
rect(xleft=-0.4, xright=0.4, ybottom=-0.4, ytop=0.4, col="red", border="blue")

col
border
lty
lwd
cex







