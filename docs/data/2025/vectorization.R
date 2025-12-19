# Vectorization examples
# simple arithmetics with a single value
a <- 4
a * 3

# same syntax for multiple values
a <- 1:4
a * 3

# five vs one, recycling
10:14 == 12

# BAD - warning indicates that recycling was not regular
10:14 == 11:12

# Possible, but not a good idea
10:15 == 11:12

# match - perfectly fine!
10:14 %in% 11:12


# Some functions are properly vectorized (e.g maths)
abs(-5)
abs(-5:5)
sin(0:3)

# VECTORS have no place in if()
# or in a while()!
# if(1:2==2)message("Yey")
# Otherwise you get errors!

# plotting also vectorizes things
# col and pch are recycled to match the 5 values
plot(10:14, col="red", pch=16)


# But they were also supposed to be vectors
ch <- 1:5
plot(10:14, col="red", pch=ch)

# and recycling willl happen ( pch has length of 2, it will create an alternating pattern
plot(10:14, col="red", pch=16:17)

# some primitive plotting funcitons are also vectorized
# Consider this
plot(0,0)
rect(ybottom=0, ytop=1,xleft=-1, xright=0, col="#FF000055")


# And try to make sense of this:
# - ybottom is the longest, defining a bunch of rectangles,
# the rest will be recycled so enough information is provided
# for all rectangles.
# - rectangles' left and right sides are interchangable!
plot(0,0)
rect(ybottom=seq(0,-1, by=-0.2), 
     ytop=1,xleft=c(-1,1), xright=0, col="#FF000055")


