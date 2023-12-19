# Solution to our earlier exercise
# https://adamtkocsis.com/rkheion/Exercises/2023-12-11b_circle-matrix.html
# 2023-12-19


#' Degrees to radians converter
#'
#' @param x Angle in degrees.
#' @return Angle in radians
DegToRad <- function(x) x / 180 * pi 

#' Low-level plotting function to draw a circle with a given radius
#'
#' @param x The x coordinate of origin
#' @param y The y coordinate of origin
#' @param r The radius of the circle
#' @param by The resolution of drawing in degrees. The default by==5
#' will draw a point for every five degrees.
#' @return The function has no return value.
Circle <- function(x=0, y=0, r=1, by=5){

	if(by==0) stop("Please provide a non-zero argument for 'by'!")
	# origin coordinates
	## x <- 0
	## y <- 0

	## # by: increment the degrees by this amount
	## by <- 5

	## # radius
	## r <- 1

	# number of points
	nPoint <- 360/by + 1

	# the final matrix for the coordinates
	coords <- matrix(ncol=2,nrow=nPoint)
	colnames(coords) <- c("x", "y")

	# start with 0 degrees (horizontal)
	deg <- 0

	# count of points
	count <- 1

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
		## points(xCoord, yCoord)

		# storage of coordinates
		coords[count,"x"] <- xCoord 
		coords[count,"y"] <- yCoord 

		# do the incrementing after the first plotting is done!
		deg <- deg + by

		# count the number of points you calculated!
		count <- count + 1
	}

	return(coords)

}

# testing
# with stadard default arguments
mat <- Circle()
plot(mat)

# with a smaller radius
mat2 <- Circle(r=0.5)
points(mat2)

# with an different by, that 360 is not divisible with
mat3 <- Circle(by=7)
