# Solutions to exercises:
# https://adamtkocsis.com/rkheion/Exercises/2023-12-18_draw_circle_vector.html
# https://adamtkocsis.com/rkheion/Exercises/2024-01-02_circle_polygon.html

################################################################################
# 1. Basic code to plot things
plot(0,0)

# sequence of degrees
deg <- seq(0,360,by=5)

# the degrees changed to radians
rad <- deg/180*pi

# Coordinate calculation
x <- cos(rad)
y <- sin(rad)

# plotting
points(x,y)

################################################################################
# 2. Writing this up as a function
# As a function
Circle <- function(x=0, y=0, by=5, radius=1){
  deg <- seq(0,360,by=by)
  rad <- deg/180*pi
  
  xCoord <- cos(rad)*radius + x
  yCoord <- sin(rad)*radius + y
  
  points(xCoord,yCoord)
}

# works the same way as before!
plot(0,0)
Circle()

# more configuration
plot(0,0)
Circle(by=1)

#  even more arguments!
plot(0,0)
Circle(by=1, radius=0.5)
Circle(by=1, radius=0.5, x=0.5)
Circle(by=1, radius=0.5, x=0.5, y=0.5)


################################################################################
# 3. Modifying the return value of the function + documentation

# Actual return
#' Function to calculation coordinates of a circle
#' @param x X coordinate of center
#' @param y Y coordinate of center
#' @param by Angular distance between points
#' @radius radius of the circle
#' @plot logical, should the circle be be plotted
#' @return A 2 column matrix (x and y coordinates, invisible)
Circle <- function(x=0, y=0, by=5, radius=1, plot=FALSE){
  # calculate degrees
  deg <- seq(0,360,by=by)
  
  # translate to radians
  rad <- deg/180*pi
  
  # calculate coordinates
  xCoord <- cos(rad)*radius + x
  yCoord <- sin(rad)*radius + y
  
  if(plot) points(xCoord, yCoord)
  
  # inisible return - does the same as return, but only when assigned
  invisible(cbind(xCoord,yCoord))
}

# work shte same way as before
plot(0,0)
cir <- Circle(plot=FALSE)
points(x=cir)

plot(0,0)
Circle(plot=TRUE)


plot(0,0)
cir <- Circle(plot=FALSE)


################################################################################
# 4. Modifying the function so it is plotting a polygon

#' Function to calculation coordinates of a circle
#' @param x X coordinate of center
#' @param y Y coordinate of center
#' @param by Angular distance between points
#' @radius radius of the circle
#' @col col argument of polygon
#' @border border argument of polygon
#' @lwd lwd argument of polygon
#' @lty lty argument of polygon
#' @plot logical, should the circle be be plotted
#' @return A 2 column matrix (x and y coordinates, invisible)
Circle <- function(x=0, y=0, by=5, radius=1, plot=TRUE, col=1, border=1, lwd=1, lty=1){
  # calculate degrees
  deg <- seq(0,360,by=by)
  
  # translate to radians
  rad <- deg/180*pi
  
  # calculate coordinates
  xCoord <- cos(rad)*radius + x
  yCoord <- sin(rad)*radius + y
  
  if(plot) polygon(xCoord, yCoord, lwd=lwd, lty=lty, col=col, border=border)
  
  # inisible return - does the same as return, but only when assigned
  invisible(cbind(xCoord,yCoord))
}

# default is black
plot(0,0)
Circle(plot=TRUE)
Circle(plot=TRUE, col="red", lwd=4)

plot(0,0)
Circle(by=1,plot=TRUE, col="red", lty=1)

plot(0,0)
Circle(x=0, y=0, r=1, by=5, col="#4466FF44")
