# This is not exactly the same as what we had during the lecture
# That file was lost, because Rstudio's text editor is garbage.
# (it saved a file that I could not open with anything, including Rstudio itself...)


################################################################################
# 1. Add axis to the right side of a plot ()
# https://adamtkocsis.com/rkheion/Exercises/2022-11-26b_axis_position.html


# simple plot
plot(0,0)

# the axis function is necessary, check
?axis

# and then use!
axis(4)


################################################################################
# 2. Drawing a circle

# Drawing a unit circle (radius=1)
# x coordinate is cos(angle_in_radians)
# y coordinate is sin(angle_in_radians)

# background
plot(0,0)

# angles to draw the circle
rad <- 0
points(cos(rad), sin(rad))
rad <- 0.5
points(cos(rad), sin(rad))
rad <- 1
points(cos(rad), sin(rad))
rad <- 1.5
points(cos(rad), sin(rad))
rad <- 2
points(cos(rad), sin(rad))

# we think in degrees! -> we need a way to convert degrees to radians!
deg <- 180
# result should be pi
deg / 180 * pi

# write a function to do this easily:

#' Degrees to radians converter
#'
#' @param x Angle in degrees.
#' @return Angle in radians
DegToRad <- function(x) x / 180 * pi 

# now we can draw the circle for every 5 degrees:

plot(0,0)

# in degrees
deg <- 0
# in radians
rad <- DegToRad(deg)
# actual point to plot
points(cos(rad), sin(rad))

# the same for every five degrees
# in degrees
deg <- 5 
# in radians
rad <- DegToRad(deg)
# actual point to plot
points(cos(rad), sin(rad))

# the same for every five degrees
# in degrees
deg <- 10 
# in radians
rad <- DegToRad(deg)
# actual point to plot
points(cos(rad), sin(rad))

### etc. -> notice that the only line that changes is the degree
# this is actually dependent on the previous state, and can be
# written as deg <- deg + 5. so the same chunk of code can be repeated

plot(0,0)

# in degrees
deg <- 0
# in radians
rad <- DegToRad(deg)
# actual point to plot
points(cos(rad), sin(rad))

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
# if you copy this chunk, and paste it into the console,
# you repeat the entire process as many times as you want!
# in degrees
deg <- deg + 5 
# in radians
rad <- DegToRad(deg)
# actual point to plot
points(cos(rad), sin(rad))
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

# of course we do not want ot do this manually - you want to put this in an iteration

# initial background plot
plot(0,0)

# start with 0 degrees (horizontal)
deg <- 0

# iterate for every 5th degree
while(deg <= 360){
	# the degrees in radians
	rad <- DegToRad(deg)

	# actual point to plot
	points(cos(rad), sin(rad))
	
	# do the incrementing after the first plotting is done!
	deg <- deg + 5 
}

#######################################----------------------------------------
# Part 2 - Writing a function from this
# first - let's add the new parameters
# a. -> by: free up the 5-degree constraint
# this is easy, just replace the 5 with a user-defined by argument

# background
plot(0,0)

# by: increment the degrees by this amount
by <- 1

# start with 0 degrees (horizontal)
deg <- 0

# iterate for every 5th degree
while(deg <= 360){
	# the degrees in radians
	rad <- DegToRad(deg)

	# actual point to plot
	points(cos(rad), sin(rad))
	
	# do the incrementing after the first plotting is done!
	deg <- deg + by 
}
####################------------------------------------------------------------
# b. the radius
# the coordinates are given for the unit circle: that has radius of 1
# if we want to change the radius, we have to multiply the coordinates with the
# new radius

# by: increment the degrees by this amount
by <- 1

# radius
r <- 0.75

# start with 0 degrees (horizontal)
deg <- 0

# iterate for every 5th degree
while(deg <= 360){
	# the degrees in radians
	rad <- DegToRad(deg)

	# actual point to plot
	points(cos(rad)*r, sin(rad)*r)
	
	# do the incrementing after the first plotting is done!
	deg <- deg + by 
}


####################------------------------------------------------------------
# c. changing the origin with x and y 
# this effectively means translating the circle with these coordinates.
# the original circle has its center at the origin (0,0)
# all we have to do is add the x and y values of the new origin to the
# calculated coordinates

# origin coordinates
x <- 0.25
y <- 0.1

# by: increment the degrees by this amount
by <- 1

# radius
r <- 0.75

# start with 0 degrees (horizontal)
deg <- 0

# iterate for every 5th degree
while(deg <= 360){
	# the degrees in radians
	rad <- DegToRad(deg)

	# actual point to plot
	# at this point doing this in one line definitely looks a bit
	# too long, so let's create new variables
	xCoord <- cos(rad)*r + x
	yCoord <- sin(rad)*r + y

	# and then do the plotting
	points(xCoord, yCoord)
	
	# do the incrementing after the first plotting is done!
	deg <- deg + by 
}


####################------------------------------------------------------------
# d. writing an actual function
# defaults are set so the function behavior does not change from the original
# use of the code
DrawCircle <- function(x=0, y=0, r=1, by=5){

	## # origin coordinates
	## x <- 0.25
	## y <- 0.1

	## # by: increment the degrees by this amount
	## by <- 1

	## # radius
	## r <- 0.75

	# start with 0 degrees (horizontal)
	deg <- 0

	# iterate for every 5th degree
	while(deg <= 360){
		# the degrees in radians
		rad <- DegToRad(deg)

		# actual point to plot
		# at this point doing this in one line definitely looks a bit
		# too long, so let's create new variables
		xCoord <- cos(rad)*r + x
		yCoord <- sin(rad)*r + y

		# and then do the plotting
		points(xCoord, yCoord)

		# do the incrementing after the first plotting is done!
		deg <- deg + by 
	}

}

# calling to the function
plot(0,0)
# use all defaults
DrawCircle()
# more specific 
DrawCircle(r=0.9, by=2)
DrawCircle(x=0.5, y=0, r=0.5, by=0.5)



####################------------------------------------------------------------
# e. finalizing steps: documentation and defense
# defense in this case is not critical, since we are doing arithetic operations
# with the parameters. The errors will indicate accurately that we are doing things
# wrong!
# The only thing that can be a problem is if by is set to exactly 0, when the code
# will result in an infinite loop!

#' Low-level plotting function to draw a circle with a given radius
#'
#' @param x The x coordinate of origin
#' @param y The y coordinate of origin
#' @param r The radius of the circle
#' @param by The resolution of drawing in degrees. The default by==5
#' will draw a point for every five degrees.
#' @return The function has no return value.
DrawCircle <- function(x=0, y=0, r=1, by=5){

	if(by==0) stop("Please provide a non-zero argument for 'by'!")
	## # origin coordinates
	## x <- 0.25
	## y <- 0.1

	## # by: increment the degrees by this amount
	## by <- 1

	## # radius
	## r <- 0.75

	# start with 0 degrees (horizontal)
	deg <- 0

	# iterate for every 5th degree
	while(deg <= 360){
		# the degrees in radians
		rad <- DegToRad(deg)

		# actual point to plot
		# at this point doing this in one line definitely looks a bit
		# too long, so let's create new variables
		xCoord <- cos(rad)*r + x
		yCoord <- sin(rad)*r + y

		# and then do the plotting
		points(xCoord, yCoord)

		# do the incrementing after the first plotting is done!
		deg <- deg + by 
	}

}

################################################################################
# 3. Visualizing Euler's number's approximation
# https://adamtkocsis.com/rkheion/Exercises/2022-11-21_visualize_e.html

# basic plot to put things on
plot(NULL, type="n", xlim=c(0, 10), ylim=c(0, 3))

# initialization
count <- 0
estimate <- 0

# start iteration
while(count < 15){
	# the estimate
	estimate <- estimate + 1 / factorial(count)

	# Hacking into the loop to do plotting!
	points(count, estimate)
	
	# display the estimate
	message(estimate)
	# loop counter increment
	count <- count + 1
}
estimate
