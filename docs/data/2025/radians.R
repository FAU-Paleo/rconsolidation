# radians to degrees converter
x <- 60
x*pi/180
#x/180*pi

#' Degrees to radians calculator
#' 
#' @param x Numeric value in degrees.
#' @return Numeric value in radians.
DegToRad <- function(x) x*pi/180

#' Degrees to radians calculator
#' 
#' @param x Numeric value in degrees.
#' @return Numeric value in radians.
DegToRad <- function(x){
  res <- x*pi/180
  return(res)
}


DegToRad(0)==0
DegToRad(180)==pi
DegToRad(360)==2*pi

DegToRad("asdf")

