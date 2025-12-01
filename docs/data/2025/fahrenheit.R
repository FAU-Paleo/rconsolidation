# Fahrenheit to Celsius conversion

################################################################################
# 1. raw code
fahrenheit <- 100
celsius <- (fahrenheit - 32)/1.8


################################################################################
# 2. as a simple function
FahrenheitToCelsius <- function(fahrenheit){
  # the calculation
  celsius <- (fahrenheit - 32)/1.8
  
  # return
  return(celsius)
  
}


# valid input
FahrenheitToCelsius(32) == 0
FahrenheitToCelsius(212) == 100

# invalid input
is.na(FahrenheitToCelsius("asd")) # does not yet work


################################################################################
# 3. somewhat faulty, incomplete solution
FahrenheitToCelsius <- function(fahrenheit){
  if(is.numeric(fahrenheit)){
  
     # the calculation
     celsius <- (fahrenheit - 32)/1.8
  }
  
  # return
  return(celsius)
  
}


# valid input
FahrenheitToCelsius(32) == 0
FahrenheitToCelsius(212) == 100

# !!!!!37.777 wrong output!!!!
FahrenheitToCelsius("asd")

# this is because of the variable scoping issues.
# the object celsius is not found in the function
# it is returned from the global environment!!!
# if we remove it, the function returns an error
rm(celsius)
FahrenheitToCelsius("asd")


################################################################################
# 4. More complete, better solution

#' Fahrenheit to Celsius calculator
#' 
#' @param fahrenheit Numeric value is degrees Fahrenheit
#' @return Numeric value in celsius (or missing if fahrenheit is not numeric).
FahrenheitToCelsius <- function(fahrenheit){
  if(is.numeric(fahrenheit)){
    
    # the calculation
    celsius <- (fahrenheit - 32)/1.8
  }else{
    celsius <- NA
  }
  
  # return
  return(celsius)
  
}



# valid input
FahrenheitToCelsius(32) == 0
FahrenheitToCelsius(212) == 100

# 37.777 wrong output
is.na(FahrenheitToCelsius("asd"))

