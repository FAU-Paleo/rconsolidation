# This is not exactly the same as what we had during the lecture
# That file was lost, because Rstudio's text editor is garbage.
# (it saved a file that I could not open with anything, including Rstudio itself...)

################################################################################
# from before last lecture - Printing values divisible by 7
# https://adamtkocsis.com/rkheion/Exercises/2022-11-14f_message_7_divisible.html

#######################################----------------------------------------
# Part I
# print a single value
x <- 12
message(x)

# value divisible by 7
# use modulus: remainder of integer division
x%%7

# if the result of this is exactly 0, the number is divisible
divisible <- x%%7==0
divisible

# then we can use this to determine whether we should print a message or not
if(divisible) message(x)

# Now we just have to iterate this through all values from 1 to 1000
x <- 1

# iteration
while(x <= 1000){

	# is x divisible by 7?
	divisible <- x%%7==0

	# then we can use this to determine whether we should print a message or not
	if(divisible) message(x)

	# increment x
	x <- x + 1

}

#######################################----------------------------------------
# Part II - generatlizing to a function

# a) finding a generalized implementation:

# the multipes of
x <- 6

# maximum number to search
n <- 100

# rename previous x to counter (we need x to be the parameter of the function)
counter <- 1

# iteration
while(counter <= n){

	# is counter divisible by x?
	divisible <- counter%%x==0

	# then we can use this to determine whether we should print a message or not
	if(divisible) message(counter)

	# increment counter
	counter <- counter + 1

}

# b)  Putting this into a function
Multiples <- function(x, n){

	## # the multipes of
	## x <- 6

	## # maximum number to search
	## n <- 100

	# rename previous x to counter (we need x to be the parameter of the function)
	counter <- 1

	# iteration
	while(counter <= n){

		# is counter divisible by x?
		divisible <- counter%%x==0

		# then we can use this to determine whether we should print a message or not
		if(divisible) message(counter)

		# increment counter
		counter <- counter + 1

	}
}

# testing
Multiples(x=7, n=1000)
Multiples(x=4, n=100)
# Multiples(x=4, n="a") # very bad, infinite loop

# c) finish: add documentation, and defense
#' Function to display the multiples of an integer number
#'
#' @param x The numbers will be multiples of this
#' @param n Largest number to look for
#' @return The function has no return value
Multiples <- function(x, n){

	# stop if n is not numeric
	if(!is.numeric(n)) stop("'n' has to be a number!")
	if(n < 1) stop("n has to be at least 1!")

	## # the multipes of
	## x <- 6

	## # maximum number to search
	## n <- 100

	# rename previous x to counter (we need x to be the parameter of the function)
	counter <- 1

	# iteration
	while(counter <= n){

		# is counter divisible by x?
		divisible <- counter%%x==0

		# then we can use this to determine whether we should print a message or not
		if(divisible) message(counter)

		# increment counter
		counter <- counter + 1

	}
}
