# Homework solutions and lecture notes - 2023-10-31



################################################################################
# 1. Length of character strings
nchar("Archaeornithomimus")

################################################################################
# 2. Messaging pasted values
name <- "The thing"
age <- 99
input <- paste("I am", name, "and I am", age, "years old.")
message(input)

# same with paste0
input <- paste0("I am ", name, ", and I am ", age, " years old.")
message(input)

# Semantically worse solution:
name <- "The thing,"
age <- 99
input <- paste("I am", name, "and I am", age, "years old.")
message(input)

################################################################################
# 3. Messaging the length of character strings
text <- "Archaeornithomimus"
textLength<- nchar(text)
template <- paste0("Your string '",text,"' contains ",textLength," characters!")
message(template)

# the same, with fewer lines
text <- "Archaeornithomimus"
template <- paste0("Your string '",text,"' contains ",nchar(text)," characters!")
message(template)


################################################################################
# 4. Printing types
# a randomly chose vale
var <- 12+4i

# printing to the console
myString <- paste("The variable 'var' contains the value '", var ,"', and it is of type '",typeof(var) ,"' type.", sep="")
message(myString)

# this is a rather long instruction
# feel free to break it up to multiple lines!
myString <- paste(
	"The variable 'var' contains the value '", var ,
	"', and it is of type '",typeof(var) ,"' type." ,
	 sep="")
message(myString)

################################################################################
# Exercise 5

# should work with any of these. Uncomment to test:
## text <- ""
## text <- "A"
## text <- "Dog"
## text <- "My awesome string"
text <- "awesom"
## text <- "awesome"

# Should be the number of characters should be greater than 7!
# These are wrong solutions - be mindful of the corner cases!
if(nchar(text) > 6) message("Good job!")
if(nchar(text) >= 7) message("Good job!")

# good solution
if(nchar(text) > 7) message("Good job!")


################################################################################
# 6. Correcting syntax of if statements

# Use exp(1)
if(exp(1)>0){
  message("This works!")
}

# Not equal !=
if("a"!="d"){
  text <- "Some feedback"
  message(text)
}


# right order of quotes!
a <- 40-50
if(a>0){
  message("'This is cool'")
}


################################################################################
# 7. Type dependent feedback

# Any of these should work -> check for correct output
## x <- 12
## x <- 12L
## x <- TRUE
## x <- "TRUE"
x <- 12+4i

# to check out results, feedback is reset, so we can see whether
# the solutions work correctly
feedback <- NA

# feedback
if(is.logical(x))  feedback <- "Good!"
if(is.double(x))  feedback <- "Good!"
if(is.integer(x))  feedback <- "Good!"
if(is.character(x))  feedback <- "Bad!"
if(is.complex(x))  feedback <- "Bad!"
message(feedback)

# funnel cases together
# with the logical or (|) operator: 
# again, set this to default
feedback <- NA

# combining cases together
if(is.logical(x) | is.double(x) |  is.integer(x))  feedback <- "Good!"  
if(character(x) | complex(x))  feedback <- "Bad!"  
message(feedback)

# Most frequenlty in ifs: |:widens the 'range';  &: narrows the 'range'

######################################################################
# 8. Message based on calculation result

# calculate a result - test with different input!
result <- log((12^3+200)/400) 
result <- -12

# simple if/else
if(result>=0){
  message("The value of 'result' is positive or 0!")
}else{
  message("The value of 'result' is negative!")
}

######################################################################
# 9. Is x a number and positive?

# example inputs - check the solutions with multiple!
## x <- 45
## x <- 0
x<- "a"
x <- -45


# Solution 1. sequential ifs in outer if (shorter in this case)
# 1. numeric or not?
if(is.numeric(x)){
  message("x is numeric!")
  
  # is x larger or equal than 0?
  if(x > 0)  message("x is positive.")
  if(x == 0) message("x is equal to 0.")
  if(x < 0)  message("x is negative.")
    
}else{
  message("x is not numeric!")
}


# Solution 2. multi-level if statements
if(is.numeric(x)){
  # message
  message("x is numeric!")
  
  # is x larger or equal than 0?
  if(x >= 0){
    
    # if it is larger than equal, is it larger
    if(x > 0){
      message("x is positive.")
      
    # exactly equal
    }else{
      if(x == 0) message("x is equal to 0.")
    }

  # x is not equal or greater than 0
  }else{
    if(x < 0)  message("x is negative.")
  }  

}else{
  message("x is not numeric!")
}

  
