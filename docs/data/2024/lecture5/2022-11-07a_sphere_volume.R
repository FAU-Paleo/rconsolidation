# Solution to https://adamtkocsis.com/rkheion/Exercises/2022-11-07a_sphere_volume.html

# complete function definition

#' Calculate the volume of sphere
#' 
#' @param radius This of the sphere, an integer value
#' @return A numeric value for the sphere of the function
VolumeSphere <- function(radius){
  
  # actual calculation
  volume<- 4 / 3 * pi * radius ^ 3
  
  # return 
  return(volume)
}

# 1. Function definition
# 2. Documentation
# 3. Testing
# 4. Defense


# Example test cases
# good case
VolumeSphere(3)

# bad case, function produces error but it is a bit cryptic
VolumeSphere("a")

# bad case, probably defend against negative input!
VolumeSphere(-3)

# nice case
VolumeSphere(5)


# example defense

#' Calculate the volume of sphere
#' 
#' @param radius This of the sphere, an integer value
#' @return A numeric value for the sphere of the function
VolumeSphere2 <- function(radius){
  
  if(!is.numeric(radius)) stop("The function expects numeric input.")
    
  # actual calculation
  volume<- 4 / 3 * pi * radius ^ 3
  
  # return 
  return(volume)
}


VolumeSphere2("a")
