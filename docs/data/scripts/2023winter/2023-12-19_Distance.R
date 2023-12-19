# Solution to the distance matrix exercise
# https://adamtkocsis.com/rkheion/Exercises/2023-12-11_distance-matrix.html
# 2023-12-19

#' The Euclidean distance between two points
#'
#' @param x0 X coordinate of the first point.
#' @param y0 Y coordinate of the first point.
#' @param x1 X coordinate of the second point.
#' @param y1 Y coordinate of the second point.
#' @return The distance value
distance <- function(x0, x1, y0, y1){
	sqrt((x1-x0)^2 + (y1-y0)^2)
}

# the dummy points in that we will work with
points <- matrix(c(
	1,4,
	2,2,
	3,1,
	0, -1
), ncol=2, byrow=TRUE)


# add names
rownames(points) <- letters[1:4]
colnames(points) <- c("x", "y")
points

## # later you can try it with this
## points <- matrix(runif(100),ncol=2)
## colnames(points) <- c("x", "y")

# create an empty matrix to store the data with
dmat <- matrix(nrow=nrow(points), ncol=nrow(points))
colnames(dmat) <- rownames(points)
rownames(dmat) <- rownames(points)

# the final result
# repeat for every column
for(j in 1:nrow(points)){

	# repeat for every row
	for(i in 1:nrow(points)){

		# the single instruction to give
		dmat[i, j] <- distance(
			x0=points[i, "x"], 
			y0=points[i, "y"], 
			x1=points[j,"x"], 
			y1=points[j,"y"])

		# you an always use message to indicate where you are!
		message(paste("row:", i, "column: ", j ))
	}
}
# the resulting distance matrix
dmat

# the base R solution
dist(points)
class(dist(points))

# you can always coerce this to a regular matrix
as.matrix(dist(points))

