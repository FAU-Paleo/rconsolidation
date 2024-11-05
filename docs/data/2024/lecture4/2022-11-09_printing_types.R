# Solution to exercise: Printing types
# https://adamtkocsis.com/rkheion/Exercises/2022-11-09_printing_types.html

# the variable
var <- 6

# messaging example
message("The variable 'var' contains the value '<value>', and it is of type '<type>'.")



# the variable
var <- 1.2e4

# the type of the variable
type <- typeof(var)

# all concatenated to a single character
text <- paste0("The variable 'var' contains the value '", var, "', and it is of type '",type,"'.")
message(text)

