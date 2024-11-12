# About the return keyword:

# Another function definition
square <- function(x) x^2

# return is not necesary here, because this is
# the last line of the function definition
square <- function(x) return(x^2)

# the square of x is returned:
# this is the value that will be substituted in the place of the
# function call.
square(x=4)

# Example function: does things, that
PrintNice <- function(){
  message("This is fine!")
  message("Another line")
  message("Something else")
  one <- 7
  return(one*2)
}

# return value is assigned to result
result <- PrintNice()

# returned value can be reused in any way
PrintNice()*4



# return forces the function to exit:
# Lines after it will not be executed!
PrintNice2 <- function(){
  message("This is fine!")
  message("Another line")
 
  one <- 7
  return(one*2)
  
  message("Something else")
}

PrintNice2()

