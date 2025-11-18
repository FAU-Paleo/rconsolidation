# Corrections/solutions: https://adamtkocsis.com/rkheion/Exercises/2022-11-06a_definition_correction.html

# A
CircleArea <- function(ra) {r^2 * 3.14}

# B
RectArea <- function(a,b){ a * b}
RectArea(a=4, b=5)

# C
CelsiusToFahrenheit <- function(celsius){
  # is the input numeric?
  if(is.numeric(celsius)){
    result <- celsius * 1.8 + 32
    # if it is not the result should be missing
  }else {
    message("Non-numeric input, returning NA!")
    result <- NA
  }
  return(result)
}

CelsiusToFahrenheit(0)
