################################################################################
# Second part of the solution
################################################################################

# Our earlier function to do degrees-radians conversion

#' Function to translate degrees to radians
#'
#' @param x Angle in degrees (numeric)
#' @return value in radians
DegToRad <- function(x) x/180*pi

# we need this function or it will be missing!


# Step 1. Additional parameters

# changing radius = multiply coordinates by the radius
# transposing to different origin: add x and y offsets to coordinates
# The example scales the radius of the circle to half
# and offsets its to +0.3 in the x dimension to to -0.5 in the y dimension

# step 2b. customization options:
# make an empty plot
plot(0,0)

# start with 0 degrees
degree <- 0

# Write a loop from 0 to 360 degrees (increment with 5),
# to get the circle
while(360 > degree ){

  # translate the degree to radian
  radian <- DegToRad(degree)

  # calculate the cosine and the sine, cos() sin()
  x <- cos(radian)*0.5 + 0.3
  y <- sin(radian)*0.5 - 0.5

  # visualize the coordinates with points()
  points(x=x,y=y, col="green", pch="❤️")

	# increment
  degree <- degree + 5

}




#################################################
# First step: make variables from hard-coded parts of the code

# radius
r <- 0.5

# the increment (angles)
by <- 5

# offset (x dimension)
x <- 0.3

# offset (y dimension)
y <- -0.5

# make an empty plot
plot(0,0)


  if(by <= 0) stop("The by argument has to be positive. ")
  # start with 0 degrees
  degree <- 0

  # Write a loop from 0 to 360 degrees (increment with 5),
  # to get the circle
  while(360 > degree ){

    # translate the degree to radian
    radian <- DegToRad(degree)

    # calculate the cosine and the sine, cos() sin()
		# !we had to rename the original x and y to xCoord and yCoord!
    xCoord <- cos(radian)*r + x
    yCoord <- sin(radian)*r + y

    # visualize the coordinates with points()
    points(x=xCoord,y=yCoord, col="green", pch="❤️")

      # increment
    degree <- degree + by

  }

################################################################################
# Enclose in a function
################################################################################



plot(0,0)

#' Function to draw a circle
#'
#' @param x numeric, x coordinate of origin
#' @param y numeric, y coordinate of origin
#' @param r numeric, radius
#' @param by numeric, angle increment in degrees
#' @return The function has no return value
DrawCircle <- function(x=0, y=0, r=1, by=5){

  # Without this the functino produces and infinite loop!!
  if(by <= 0) stop("The by argument has to be positive. ")
  # start with 0 degrees
  degree <- 0

  # Write a loop from 0 to 360 degrees (increment with 5),
  # to get the circle
  while(360 > degree ){

    # translate the degree to radian
    radian <- DegToRad(degree)

    # calculate the cosine and the sine, cos() sin()
    xCoord <- cos(radian)*r + x
    yCoord <- sin(radian)*r + y

    # visualize the coordinates with points()
    points(x=xCoord,y=yCoord, col="green", pch="❤️")

      # increment
    degree <- degree + by

  }

}

# Testing
plot(0,0)
DrawCircle(x = 0.3, y = -0.5, r = 0.5,by = 5)
DrawCircle(x = 0, y = 0, r = 1,by = 10)

# invoke with defaults
plot(0,0)
DrawCircle()

# produced an infinite loop
plot(0,0)
DrawCircle(by = -1)


# Together with the ellipsis


#' Function to draw a circle
#'
#' @param x numeric, x coordinate of origin
#' @param y numeric, y coordinate of origin
#' @param r numeric, radius
#' @param by numeric, angle increment in degrees
#' @param ... arguments passed to the points function.
#' @return The function has no return value
DrawCircle <- function(x=0, y=0, r=1, by=5,...){

  if(by <= 0) stop("The by argument has to be positive. ")
  # start with 0 degrees
  degree <- 0

  # Write a loop from 0 to 360 degrees (increment with 5),
  # to get the circle
  while(360 > degree ){

    # translate the degree to radian
    radian <- DegToRad(degree)

    # calculate the cosine and the sine, cos() sin()
    xCoord <- cos(radian)*r + x
    yCoord <- sin(radian)*r + y

    # visualize the coordinates with points()
    points(x=xCoord,y=yCoord, ...)

      # increment
    degree <- degree + by

  }

}


# example uses
plot(0,0)
DrawCircle()
DrawCircle(r=0.5, col="green", pch="%")
DrawCircle(cex=2)

