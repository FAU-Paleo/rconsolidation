# Solutions to: https://adamtkocsis.com/rkheion/Exercises/2022-11-21b_draw_circle.html
# Part 1: recreating the plot (unit circle)

# Step 0: think about how we can make this 
# write pseudocode, or something like that


# Write a loop from 0 to 360 degrees (increment with 5),
# to get the circle

  # translate the degree to radian

  # calculate the cosine and the sine, cos() sin()

  # visualize the coordinates with points()




# step 1. Implent repeating case for a single case, e.g. 25 degrees

# something to draw on
plot(0,0)

# Our earlier function to do degrees-radians conversion

#' Function to translate degrees to radians
#'
#' @param x Angle in degrees (numeric)
#' @return value in radians
DegToRad <- function(x) x/180*pi

# Write a loop from 0 to 360 degrees (increment with 5),
# to get the circle
	 degree <- 25

  # translate the degree to radian
  radian <- DegToRad(degree)

  # calculate the cosine and the sine, cos() sin()
  x <- cos(radian)
  y <- sin(radian)

  # visualize the coordinates with points()
  points(x=x,y=y)

	# change
  degree <- degree + 5


# step 2. Write the loop
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
  x <- cos(radian)
  y <- sin(radian)
  
  # visualize the coordinates with points()
  points(x=x,y=y)

	# increment with 5
  degree <- degree + 5

}


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
  x <- cos(radian)
  y <- sin(radian)

  # visualize the coordinates with points()
  points(x=x,y=y, col="green", pch="❤️")

  degree <- degree + 5

}

# changing plotting margins: alway possbile with xlim and ylim
plot(0,0, xlim=c(-10, 15), ylim=c(-4, 8))

# Part 2

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
