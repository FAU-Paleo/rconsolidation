# Solution to:  Longest same-results sequence of heads or tails 
# https://adamtkocsis.com/rkheion/Exercises/2023-12-12_ht_sequence_length.html


################################################################################
# Function to calculate the longest streak in a vector 
dummy <- c(
"T",
"T",
"H",
"T",
"T",
"T",
"H",
"T",
"H",
"H"
)


# number of values
n <- length(dummy) 

# global counter for longest occured
longest <- 1

# the current streak
current <- 1


# go through every values
for(i in 2:n){
	# the same: sequence continues
	if(dummy[i]==dummy[i-1]){
		# increment the current streak counter
		current <- current+1
	}else{
		# current is higher than longest registered?
		if(current > longest) longest <- current
		
		# reinitialize current to 1
		current <- 1
	}
	if(current > longest) longest <- current

	longest

}


#' Function to calculate the longest streak in a vector
#' 
#' @param x a vector. 
#' @return A positive integer value.
LongestStreak <- function(x){

	# number of values
	n <- length(x) 

	# global counter for longest occured
	longest <- 1

	# the current streak
	current <- 1

	# go through every values
	for(i in 2:n){
		# the same: sequence continues
		if(x[i]==x[i-1]){
			# increment the current streak counter
			current <- current+1
		}else{
			# current is higher than longest registered?
			if(current > longest) longest <- current

			# reinitialize current to 1
			current <- 1
		}
		if(current > longest) longest <- current

	}
	return(longest)
}

# example
LongestStreak(dummy)

# on the one oneline
tosses <- c("H", "T", "H", "T", "H", "T", "T", "T", "H", "T")
LongestStreak(tosses)

# test cases
LongestStreak(c(T, F, T, T, F, T, T,T, T, T, F))
LongestStreak(c(T, F, T, T, F, T, T,T, T, T, T))

