# 2025-11-17: Functions - demo


# every time something is written into the console, a function is getting run
# this
"a"

# is actually this
show("a")


# you can see the 'contents' of a function object, by typing in its name
# A general function -> invokes read.table inside
read.csv
show(read.csv)

# a built-in (has C implementation)
mean

# calling to the function happens when you have parentheses after it
mean(1:10)


################# Arguments

# this function has a return value (like mean above)
# The return value is substitute in place of the function call
# after the instruction was executed
wd <- getwd()


# Writing custom functions is a great way to maximize code reuse
# and to make things easier to understand

# The basic syntax is
#function(<args>) <body>
# e.g.
function() message("Hello world")

# this function defintion is not saved, so it is not really usable
hello <- function() message("Hello world")


# this function has no return value, it will assign NULL to the variable name
nothing <- hello()


# this function has one argument a:
square <- function(a) return(a^2)

# call to the function, defining the argument to be 8
square(a=8)


# function bodies can be made up of multple lines using braces:

# function(<args>){ 
# <instruction>
# <instruction>
# }





# an example. It does the squaring and adds 10 to the value
squareplus <- function(x){
  # partial result
  partial <- x^2 
  result <- partial + 10
  return(result)
}

# calling to it
squareplus(x=8)

# NOte that neither parital, nor result are in the global namespace!
# They exist only in the function's environment, which is destroyed
# when the function is done

# if you need to see what the function body is doing, you can manually run it like this:

# assign values to variables in global namespace
x<- 8
# partial result
partial <- x^2 
result <- partial + 10
result

# Defaults
# functions can have many arguments, which is made easier to use with defaults
?read.csv


# defaults are set with given vaalues in the argument list between the parens
squareplus <- function(x,y=10){
  # partial result
  partial <- x^2 
  result <- partial + y
  return(result)
}

# runs
squareplus(x=8)
squareplus(x=8, y=12)

# functions can have any effect, for instnace plotting:
sequencePlot <- function() plot(11:20)
sequencePlot()



