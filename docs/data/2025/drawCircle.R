# Drawing a circle!

# https://adamtkocsis.com/rkheion/Exercises/2022-11-21b_draw_circle.html
# create an empty plot
# par(pty="s")
plot(0,0)

# Basic
# iterate through every angle between 0 and 360, by 5 - for/while
  # start with a specific case!
  deg <- 0
  # transform the degrees to radians (degree/180*pi)
  rad <- deg/180*pi
  
  # calculate the cosine (x) and sine (y) of the angle
  x <- cos(rad)
  y <- sin(rad)

  # use points() to visualize the point 
  points(x=x, y=y)
  
################################################################################
# Solution with while
################################################################################

# Solution 1. A bit overcomplicated
# iterate through every angle between 0 and 360 by 5, using a while loop!
deg <- 0
plot(0,0)
container <- rep(NA, 144)
i<- 1
while(i<=72){
  container[i] <- sin(deg/180*pi)
  container[i+1] <- cos(deg/180*pi)
  deg<-deg + 5
  points(container[i], container[i+1])
  i<- i+1
}

360/5*2
  
# Solution 2. A bit simpler 
plot(0,0)
deg <- 0
while(deg < 360){
  
  # transform the degrees to radians (degree/180*pi)
  rad <- deg/180*pi
  
  # calculate the cosine (x) and sine (y) of the angle
  x <- cos(rad)
  y <- sin(rad)
  
  # use points() to visualize the point 
  points(x=x, y=y)
  deg <- deg + 5  
}


################################################################################
# Solution with for
################################################################################
plot(0,0)

# iterate through every angle between 0 and 360 by 5, using a for loop!
angles<- seq(0, 360, by=5)

for(i in angles){
  rad  <-i/180*pi
  
  # calculate the cosine (x) and sine (y) of the angle
  x <- cos(rad)
  y <- sin(rad)
  
  # use points() to visualize the point 
  points(x=x, y=y)
}
    

# The same but with storage!
plot(0,0)

# iterate through every angle between 0 and 360 by 5, using a for loop!
angles<- seq(0, 360, by=5)

xVec <- rep(NA, length(angles))
yVec <- rep(NA, length(angles))

for(i in 1:length(angles)){
  rad  <- angles[i]/180*pi
  
  # calculate the cosine (x) and sine (y) of the angle
  x <- cos(rad)
  y <- sin(rad)
  
  # storeage
  xVec[i] <- x
  yVec[i] <- y
  
  # use points() to visualize the point 
  points(x=x, y=y)
}


# radius is scaling the cos and sin of the angle, multiple the coordinates
# with the radius!


    
    
    
