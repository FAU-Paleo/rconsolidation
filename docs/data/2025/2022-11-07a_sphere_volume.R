# Solution to: https://adamtkocsis.com/rkheion/Exercises/2022-11-07a_sphere_volume.html
VolumeSphere <- function(r){
  result <- 4/3 * pi * r^3
  return(result)
}


# More concise writing - depending on how much time you have!
VolumeSphere <- function(r) 4/3 * pi * r^3
VolumeSphere(r=12)

# A. Testing is necessary to figure out whether the function is working correctly
# testing
VolumeSphere(r=0)
VolumeSphere(r=1)
VolumeSphere(r=10)
VolumeSphere(r=100)
VolumeSphere(r=5)

# Semantically wrong result. There is no such thing as negative volume
VolumeSphere(r=-5)

# defense
VolumeSphere <- function(r){
  if(r<0) stop("Incorrect input.")
  result <- 4/3 * pi * r^3
  return(result)
}

# testing
VolumeSphere(r=5)
VolumeSphere(r=-5)

# error is indicated by one of the internal operations
VolumeSphere(r="radius")

#  Function documentation helps with understanding what the function is doing.
#  In R this is usually done with roygen2 syntax
#  Define at least what the function does, what are its arguments and the return value.
#  The example below is the same solution as above, but with opaque variable names.
#  Try to use variable names that are easy to understand!

#' The volume of a sphere
#' 
#' @param asd The radius of the sphere
#' @return A single numeric value, the volume
sdfadf <- function(asd){
  thingy <- 4/3 * pi * asd^3
  return(thingy)
}


#' The volume of a sphere
#' 
#' @param r The radius of the sphere
#' @return A single numeric value, the volume.
VolumeSphere <- function(r){
  if(r<0) stop("Incorrect input.")
  result <- 4/3 * pi * r^3
  return(result)
}
