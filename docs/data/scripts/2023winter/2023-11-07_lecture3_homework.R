# Homework exercise solutions

# 1. Nested if: https://adamkocsis.github.io/rkheion/Exercises/2023-10-23-nested_if.html
# examples cases to test with, somment on top says the expected result
#no
temperature <- 17
raining <- FALSE

# yes
temperature <- 10
raining <- FALSE

# yes
temperature <- 10
raining <- TRUE

# yes
temperature <- 17
raining <- TRUE

# no
temperature <- 30
raining <- FALSE

# no
temperature <- 30
raining <- TRUE


# Solution 1. Double if statements
# it is raining
if(raining){
  # 2. temperature? 
  if(temperature<=25){
    message("Wear a jacket!")
  }else{
    message("Don't wear a jacket!")
  }
# if it is not raining
}else{
  # 2. temperature
  if(temperature < 15){
    message("Wear a jacket!")
  }else{
    message("Don't wear a jacket!")
  }
}


# Solution 2: same with storing the results store the results!

#  placeholder for the result
jacket <- NA

# 1. is it raining?
if(raining){
  # 2. temperature? 
  if(temperature<=25){
    jacket <- TRUE
  }else{
    jacket <- FALSE
  }
  # if it is not raining
}else{
  # 2. temperature
  if(temperature < 15){
    jacket <- TRUE
  }else{
    jacket <- FALSE
  }
}

# producing message
if(jacket)  message("Wear a jacket!") else  message("Don't wear a jacket!")


# Solution 3: using logical operators
if(temperature < 15 | (raining & temperature <=25) ){
  message("Wear a jacket!")
}else{
  message("Don't wear a jacket!")
}

################################################################################
# Note to Exercise 2D (https://adamkocsis.github.io/rkheion/Exercises/2022-11-06_results_of_functions.html)

# using a missing value in operations usualy leads to other missing values
NA == 4


################################################################################
# 3. Correct function definition syntax
# (https://adamkocsis.github.io/rkheion/Exercises/2022-11-06a_definition_correction.html)

# A. parens can be as many as possible
CircleArea <- function(r) (((r^2 * 3.14)))

# nicest definition
CircleArea <- function(r) {
  r^2 * 3.14
}

# B. The parentheses/braces were messed up
RectArea <- function(a,b) {a * b}

# C. Missing parenthesis after celsius, and after the else keyword!
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

CelsiusToFahrenheit(15)

########################################----------------------------------------
# Wrong solution without the appropriate blocs
CelsiusToFahrenheit <- function(celsius){
  # is the input numeric?
  if(is.numeric(celsius)){
    result <- celsius * 1.8 + 32
    # if it is not the result should be missing
  }else  message("Non-numeric input, returning NA!")
  
  result <- NA
  
}

return(result)

# doesn't produce anything, there is no return statement in the function!
CelsiusToFahrenheit(15)

########################################----------------------------------------

################################################################################
# 4. The volume of a sphere
# (https://adamkocsis.github.io/rkheion/Exercises/2022-11-07a_sphere_volume.html)

# all these are good
VolumeSphere <- function(radius) {
  4/3 * pi * radius ^ 3 
} 


VolumeSphere <- function(radius) {
  return(4/3 * pi * radius ^ 3) 
} 


VolumeSphere <- function(radius) {
  volume <- 4/3 * pi * radius ^ 3
  return(volume)
} 


# example call
VolumeSphere(1)
VolumeSphere(20)
VolumeSphere(300)


################################################################################
# 5. Fahrenheit to Celsius
# (https://adamkocsis.github.io/rkheion/Exercises/2022-11-07b_fahrenheit.html)

# copied over from previous one
FahrenheitToCelsius <- function(fahrenheit){
  # is the input numeric?
  if(is.numeric(fahrenheit)){
     result <- (fahrenheit - 32) * 5/9
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


#### Warnings can be used for increasing awareness of weird input!

FahrenheitToCelsius <- function(fahrenheit){
  # is the input numeric?
  if(is.numeric(fahrenheit)){
    result <- (fahrenheit - 32) * 5/9
    # if it is not the result should be missing
  }else{
    warning("Non-numeric input, returning NA!")
    result <- NA
  }
  return(result)
}

# Warnings: double check the code!
FahrenheitToCelsius("Hot")

#### If the input is really wrong, the function call can be stopped

FahrenheitToCelsius <- function(fahrenheit){
  # is the input numeric?
  if(is.numeric(fahrenheit)){
    result <- (fahrenheit - 32) * 5/9
    # if it is not the result should be missing
  }else{
    stop("Non-numeric input, returning NA!")
  }
  return(result)
}

# works fine
FahrenheitToCelsius(130)

# produces error
FahrenheitToCelsius("54")
