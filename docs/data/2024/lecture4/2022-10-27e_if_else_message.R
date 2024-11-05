#  Message based on calculation result 
# https://adamtkocsis.com/rkheion/Exercises/2022-10-27e_if_else_message.html

result <- log((12^3+200)/400)
# Additional cases
## result <- 4-5
## result <- 0-0

if(result >= 0){
  message("The value of 'result' is non-negative!")
}else{ 
  message("The value of 'result' is negative!")
}

if(result < 0){
  message("The value of 'result' is negative!")
}else{ 
  message("The value of 'result' is non-negative!")
}

