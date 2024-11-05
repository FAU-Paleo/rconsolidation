#  Type-dependent feedback 
# https://adamtkocsis.com/rkheion/Exercises/2022-11-09b_type_dependent_feedback.html

# Part 1.

# our input
x <- 12


# feedback
if(is.logical(x))  feedback <- "Good!"
if(is.double(x))  feedback <- "Good!"
if(is.integer(x))  feedback <- "Good!"
if(is.character(x))  feedback <- "Bad!"
if(is.complex(x))  feedback <- "Bad!"
message(feedback)


# Part 2.

# our input
x <- list()
x <-12

# best to define a default
feedback <- "Not defined!"

# feedback
if(is.logical(x) | is.double(x) | is.integer(x))  feedback <- "Good!"
if(is.character(x) | is.complex(x))  feedback <- "Bad!"
message(feedback)
