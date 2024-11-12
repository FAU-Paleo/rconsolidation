# Solution to Degrees to radians calculator 
# https://adamtkocsis.com/rkheion/Exercises/2022-11-14d_deg_to_rad.html

# First, write the expression to do calculation

# value in degrees
x <- 60
# value in radians
x/180*pi


# Implemented function

#' Function to translate degrees to radians
#' 
#' @param x Angle in degrees (numeric)
#' @return value in radians
DegToRad <- function(x) x/180*pi


DegToRad(16)

sin(DegToRad(0))
cos(DegToRad(90))
