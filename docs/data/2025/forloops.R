# General notes about for loops

# consider this vector
x<- c(12, 65, 36, 24, -4)

# define a loop
# for(i in 1:length(x))
# define a loop that wil go  through every element of x

# These two lines of codes produce identical results
# Adam recommends the first one because it is easier to
# develop further in the future.
for(i in 1:length(x)) message(x[i]/2)
for(i in x) message(i/2)

# Write a for loop that uses the message() function to
# print out all letters in sequence!

# All letters
letters

# printing out everything
for(i in 1:length(letters)) message(letters[i])


# multiple lines of code iterated, such as this
message("My current letter is: a")

for(i in 1:length(letters)){ 
  full <- paste("My current letter is:", letters[i])
  message(full)
}

# this is effectively the same
for(i in 1:length(letters)){ 
  message("My current letter is:", letters[i])
}
  

# If the result needs to be stored, using indices
# can be very helpful
container <- rep(NA, length(letters))

for(i in 1:length(letters)){ 
  container[i] <- paste("My current letter is:", letters[i], sep=" - ")
  message(container[i])
}




# Practice customizing the loop!
starting <- 1
ending <- 20

for(i in starting:ending){ 
  message("My current letter is:", letters[i])
}



