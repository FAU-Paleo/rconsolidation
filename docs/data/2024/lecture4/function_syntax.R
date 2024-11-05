# Function example

# example of a function
x <- 5

# function to display the cube of a number
cube <- function(x){
	# the cube
  volume <- x^3
  message(paste("The volume of the cube is:", volume))
}

# the function
cube

# the type and class of the function
typeof(cube)
class(cube)

# calling ot the function
cube(x=3)
cube(x=9)


# function with a return value
cube <- function(x){
  volume <- x^3
  message(paste("The volume of the cube is:", volume))
  return(volume)
}


# the returned value can be reused
cube(x=9)/2

