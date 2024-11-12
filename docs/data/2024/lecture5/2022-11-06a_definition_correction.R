# Solution to https://adamtkocsis.com/rkheion/Exercises/2022-11-06a_definition_correction.html


# A: parentheses go around parameter list - around r
# function to calculate the area area of a circle
CircleArea <- function(r) {(r^2 * 3.14)}

# you can use as many parentheses as you like
(((( a <- 12 ))))


# B: closing brace instead of parenthesis after <b>, either missing open brace, or unnecessary closing brace
# function to calculate area of a rectangle
RectArea <- function(a,b) a * b
RectArea <- function(a,b){ a * b }



# C: missing parenthesis after <celsius>, missing brace after <else>
CelsiusToFahrenheit <- function(celsius){
  # is the input numeric?
  if(is.numeric(celsius)){
    result <- celsius * 1.8 + 32
    # if it is not the result should be missing
  }else{
    message("Non-numeric input, returning NA!")
    result <- NA
  }
  return(result)
}

