# Solution to exercise:  Fahrenheit to Celsius Calculator 

# https://adamkocsis.github.io/rkheion/Exercises/2022-11-07b_fahrenheit.html

# Rearrange equation from other exercise
result <- celsius * 1.8 + 32
result <- (fahrenheit-32) / 1.8

#' This is a fahrenheit to celsius calculator
#' 
#' @param fahrenheit The temperature in fahrenheit (numeric)
#' @return Numeric value in celsius, or missing value for non-numeric input.
FahrenheitToCelsius <- function(fahrenheit){
  # is the input numeric?
  if(is.numeric(fahrenheit)){
  #  result <- celsius * 1.8 + 32
    result <- (fahrenheit-32) / 1.8
    # if it is not the result should be missing
  }else{
    message("Non-numeric input, returning NA!")
    result <- NA
  }
  return(result)
}


# valid input
FahrenheitToCelsius(32) == 0
FahrenheitToCelsius(212) == 100

# input
is.na(FahrenheitToCelsius("asd"))
