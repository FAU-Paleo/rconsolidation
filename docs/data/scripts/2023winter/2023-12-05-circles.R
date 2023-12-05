# Solutions to https://adamtkocsis.com/rkheion/Exercises/2022-11-21d_circles_in_circle.html
# 2023-12-05

#' Degrees to radians converter
#'
#' @param x Angle in degrees.
#' @return Angle in radians
DegToRad <- function(x) x / 180 * pi 


#' Low-level plotting function to draw a circle with a given radius - updated for coloring
#'
#' @param x The x coordinate of origin
#' @param y The y coordinate of origin
#' @param r The radius of the circle
#' @param by The resolution of drawing in degrees. The default by==5
#' will draw a point for every five degrees.
#' @return The function has no return value.
DrawCircle <- function(x=0, y=0, r=1, by=5, color="black"){
  
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
    points(xCoord, yCoord, col=color)
    
    # do the incrementing after the first plotting is done!
    deg <- deg + by 
  }
  
}

# running the function
plot(0,0)
DrawCircle(col="red")
plot(0,0)
DrawCircle(by=1)


# Part 1: getting the plot

# quartz() # macs
# windows() # windows
# x11() # windows and linux
plot(0,0)
DrawCircle(x=0.5, y=0, r=0.5, by=1)

# empty plot
plot(0,0)

# degres
angle <- 0

# iterate untill full circle of origins
while(angle < 360){
  # degree of the origin
  rad <- DegToRad(angle)
  
  # the coordinates of th origin of circles
  xCoord <- cos(rad)/2
  yCoord <- sin(rad)/2
  
  # draw a circle around the origin
  DrawCircle(x=xCoord, y=yCoord, r=0.5, by=1)
  
  # increment 
  angle <- angle + 20
}



# Part 2
# empty plot
plot(0,0)

# degres
angle <- 0

# iterate untill full circle of origins
while(angle < 360){
  # degree of the origin
  rad <- DegToRad(angle)
  
  # the coordinates of th origin of circles
  xCoord <- cos(rad)/4
  yCoord <- sin(rad)/4
  
  # draw a circle around the origin
  DrawCircle(x=xCoord, y=yCoord, r=0.75, by=1)
  
  # increment 
  angle <- angle + 20
}





# setting color for every circle
# empty plot
plot(0,0)

# degres
angle <- 0

# use a color ramp
rainColors <-rainbow(360)

# iterate untill full circle of origins
while(angle < 360){
  # degree of the origin
  rad <- DegToRad(angle)
  
  # the coordinates of th origin of circles
  xCoord <- cos(rad)/2
  yCoord <- sin(rad)/2
  
  # draw a circle around the origin
  DrawCircle(x=xCoord, y=yCoord, r=0.5, by=1, color=rainColors[angle+1])
  
  # increment 
  angle <- angle + 20
}

