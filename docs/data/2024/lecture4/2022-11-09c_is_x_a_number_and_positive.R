#  Is x a number and positive? 
# https://adamtkocsis.com/rkheion/Exercises/2022-11-09c_is_x_a_number_and_positive.html

x <-  -5.4
x<- "a"
x<- 3
x<- 0


if(is.numeric(x)){
	# display this if numeric
  message("The value of x IS numeric.")

	# if greater
  if(x > 0){
    message("The value of x is positive")
  }else{
    message("The value of x lower than or equal to 0!")
  }
  
}else{
  message("The value of x is not numeric.")
}
