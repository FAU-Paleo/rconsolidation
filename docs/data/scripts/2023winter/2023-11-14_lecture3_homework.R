# Homework solution for the radians to degrees calculator

# pi 180
# 2*pi 360
# x y 
y <- x/pi * 180 

#' Radians to degrees
#' 
#' The function takes one value in radians and translates to degrees
#'
#' @param x The value in radians
#' @return The value in degrees.
RadToDegrees <- function(x) x /pi * 180

# Testing  
RadToDegrees(pi)
RadToDegrees(2* pi)
RadToDegrees(0) 

# longer definition (equivalent)
RadToDegrees <- function(x){
  res <- x /pi * 180
  return(res)
}
