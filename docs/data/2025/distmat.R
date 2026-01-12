# Calculating a distance matrix between points 
# Solution to  https://adamtkocsis.com/rkheion/Exercises/2023-12-11_distance-matrix.html
# 
# the actual points
points <- matrix(c(
  1,4,
  2,2,
  3,1,
  0, -1
), ncol=2, byrow=TRUE)
rownames(points) <- letters[1:4]
colnames(points) <- c("x", "y")
points

# Visualizing the points
plot(points, col="red", cex=2)
text(x=points, label=rownames(points))

# A single Euclidean distance between two points (first and second point)
sqrt(sum((points[1, ] - points[2, ])^2))

################################################################################
# 'Manual' implementation
 
# my container
distmat <- matrix(NA, ncol=nrow(points), nrow=nrow(points))
#matrix(NA, ncol=4, nrow=4)
# rowname and colnames
colnames(distmat) <- rownames(points)
rownames(distmat) <- rownames(points)
distmat


# manually filling in the matrix
# THe distance matrix is symmetric, these two values will be the same!
distmat[1,2] <- sqrt(sum((points[1, ] - points[2, ])^2))
distmat[2,1] <- sqrt(sum((points[2, ] - points[1, ])^2))

# In the main diagonal there will be 0s!
distmat[1,1] <- sqrt(sum((points[1, ] - points[1, ])^2))
distmat[2,2] <- sqrt(sum((points[2, ] - points[2, ])^2))
distmat[3,3] <- sqrt(sum((points[3, ] - points[3, ])^2))
distmat[4,4] <- sqrt(sum((points[4, ] - points[4, ])^2))


################################################################################
# Implementation with a for loop! /1

# my container
distmat <- matrix(NA, ncol=nrow(points), nrow=nrow(points))
#matrix(NA, ncol=4, nrow=4)

colnames(distmat) <- rownames(points)
rownames(distmat) <- rownames(points)


# the inner loop: fix the first point,
# calculate the distances to that from all points with this
first <- 1
for(i in 1:nrow(points)){
  distmat[first,i] <- sqrt(sum((points[first, ] - points[i, ])^2))
}


################################################################################
# Implementation with a for loop! /2

# my container
distmat <- matrix(NA, ncol=nrow(points), nrow=nrow(points))
#matrix(NA, ncol=4, nrow=4)

colnames(distmat) <- rownames(points)
rownames(distmat) <- rownames(points)

# an outer loop used to change the first point
for(j in 1:nrow(points)){
  # the first point
  first <- j

  # inner loop
  for(i in 1:nrow(points)){
    distmat[first,i] <- sqrt(sum((points[first, ] - points[i, ])^2))
  }
}


# the result
distmat

# there is a base function to do exactly this:
dist(points)
# this is a dist-class object, it can be converted into a "proper" matrix with
as.matrix(dist(points))
