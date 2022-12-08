# Script from the lecture on 2022-12-06

################################################################################
# Solution of https://adamkocsis.github.io/rkheion/Exercises/2022-11-21e_exp_with_while.html
a <- 12
b <- 2
a^b

a**b

3*5

0 + 3+3+3+3+3 +0 +0+0
 
3^5

3*3*3*3*3 *1 *1*1

result <- 1

result <- result*3
result <- result*3
result <- result*3
result <- result*3
result <- result*3

##########
#a^b # b integers
a <- 2
b <- 3 

count <- 1
result <- 1

while(count <= b){
  result <- result * a
#  message(count)
  count <- count + 1  
}


Exp <- function(base,exp){
  if(exp<0) stop("Invalid exponent. ")
  # initialization
  count <- 1
  
  # final return, identity
  result <- 1
  
  # iteration for exponent
  while(count <= exp){
    result <- result * base
    #  message(count)
    count <- count + 1  
  }
  return(result)
}


Exp(base=2, exp=3)
Exp(base=2, exp=6)
Exp(base=2, exp=0)
# non-suitable
Exp(base=2, exp=-3)



################################################################################
# Solution of https://adamkocsis.github.io/rkheion/Exercises/2022-11-21_visualize_e.html
#####################################

# initialization
count <- 0
estimate <- 0

plot(NULL, type="n", xlim=c(0, 30), ylim=c(0, 3))

# start iteration
while(count < 30){
  # the estimate
  estimate <- estimate + 1 / factorial(count)
  # display the estimate
  message(estimate)
  points(x=count, y=estimate)
  # loop counter increment
  count <- count + 1
}
estimate



################################################################################
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-21c_golden_rectangles.html
############################################
# the golden ratio
phi <- (1 + sqrt(5))/2

# starting coordinates
x1 <- 0
x2 <- 1
y1 <- 0
y2 <- 1/phi

# basic plot
plot(0,0, axes=F, xlab="", ylab="", type="n",asp=1, xlim=c(0,1), ylim=c(0,y2))

# base rectange
rect(xleft=x1,xright=x2,ybottom=y1, ytop=y2)

##########################
# Iteration 1
# 1st square
x3 <- x1 + (x2-x1) / phi
rect(xleft=x1, xright=x3, ybottom=y1, ytop=y2, col="blue")

# 2nd square
y3 <- y1 + (y2-y1) / phi
rect(xleft=x3, xright=x2, ybottom=y1, ytop=y3, border="red")

# 3rd square
x4 <- x2 - (x2 - x3) / phi 
rect(xleft=x4, xright=x2, ybottom=y3, ytop=y2, lwd=5)

# 4th square
y4 <- y2 - (y2-y3) / phi 
rect(xleft=x3, xright=x4, ybottom=y4, ytop=y2)

x1 <- x3
y1 <- y3
x2<- x4
y2 <- y4

################################################################################
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-21b_draw_circle.html
#####################################################
#
DegToRad <- function(deg){
 return( deg / 180 * pi)
} 
DegToRad(0)
DegToRad(90)
DegToRad(180)



plot(0,0)

# 0 degree
# points(x=1,y=0)
# angle <- pi/4

start <- 0

degrees <- 7
angle <- DegToRad(degrees)
points(cos(angle),sin(angle))


# 90 
points(x=0,y=1)

####################x
# Actual plot

# canvas
plot(0,0)

# start with this
degree <- 0

# iterate point plotting
while(degree < 360){
 
  # translate to radians
  angle <- DegToRad(degree)
  
  # plot it
  points(cos(angle),sin(angle))
  
  # increment
  degree <- degree + 5
}




# Find repeating patterns!
# point plotting!
plot(0,0)

angle <-0
points(cos(angle), sin(angle))
       
# angle <- 0.1    
angle <- angle + 0.1
points(cos(angle), sin(angle))       
  
#angle <- 0.2  
angle <- angle + 0.1
points(cos(angle), sin(angle))  
       
# angle <- 0.3       
#angle <- angle + 0.1
points(cos(angle), sin(angle))  

#angle <- 0.4
angle <- angle + 0.1
points(cos(angle), sin(angle))  

#angle <- 0.5     
angle <- angle + 0.1
points(cos(angle), sin(angle))  



#
plot(0,0)
count <- 1
angle <- 0

while(count <=80){
  
  angle <- angle + 0.1
  points(cos(angle), sin(angle))  
  count <- count +1
}



###########################################
DrawCircle <- function(){
  
  # canvas
  plot(0,0)
  
  # start with this
  degree <- 0
  
  # iterate point plotting
  while(degree < 360){
    
    # translate to radians
    angle <- DegToRad(degree)
    
    # plot it
    points(cos(angle),sin(angle))
    
    # increment
    degree <- degree + 5
  }

}


###########################################
DrawCircle <- function(by=5){
  
  # canvas
  plot(0,0)
  
  # start with this
  degree <- 0
  
  # iterate point plotting
  while(degree < 360){
    
    # translate to radians
    angle <- DegToRad(degree)
    
    # plot it
    points(cos(angle),sin(angle))
    
    # increment
    degree <- degree + by
  }
  
}
DrawCircle()
DrawCircle(by=1)
DrawCircle(by=30)




###########################################
DrawCircle <- function(r=1, by=5){
  
  # canvas
  plot(0,0)
  
  # start with this
  degree <- 0
  
  # iterate point plotting
  while(degree < 360){
    
    # translate to radians
    angle <- DegToRad(degree)
    
    # plot it
    points(r*cos(angle),r*sin(angle))
    
    # increment
    degree <- degree + by
  }
  
}
DrawCircle()
DrawCircle(by=1)
DrawCircle(by=30)

DrawCircle(by=1, r=0.5)
DrawCircle(by=1, r=1.1)


###########################################
# canvas
plot(0,0)

DrawCircle <- function(x=0,y=0, r=1, by=5){
  
  # start with this
  degree <- 0
  
  # iterate point plotting
  while(degree < 360){
    
    # translate to radians
    angle <- DegToRad(degree)
    
    # plot it
    points(r*cos(angle)+x,r*sin(angle)+y)
    
    # increment
    degree <- degree + by
  }
  
}
DrawCircle()
DrawCircle(by=1)
DrawCircle(by=30)

DrawCircle(by=1, r=0.5)
DrawCircle(by=1, r=1.1)
DrawCircle(x=0.5, y=0.5,by=1, r=0.5)


################################################
# Combining values and while()
################################################
a<-c(3,5,1, 4)
b<- c("a", "sdafasdf", "sdf")
d<- c(TRUE, FALSE)

typeof(a)
is.logical(d)


c()

# number of iterations
n <- 4
# counter
i <- 0

# result
res <- NULL
res <- numeric()

while(i<n){
  # add the counter to the loop
  res <- c(res, i)
  # increment counter
  i <- i + 1
}


