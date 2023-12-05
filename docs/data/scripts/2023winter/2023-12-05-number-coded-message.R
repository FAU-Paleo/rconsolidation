# Solution to: https://adamkocsis.github.io/rkheion/Exercises/2022-12-12b_number_coding.html
# 2023-12-05

# letters can be found in here
letters
LETTERS

# original
code <- c(14,15,2,15,4,25,NA,5,24,16,5,3,20,19,NA,20,8,5,NA,19,16,1,14,9,19,8,NA,9,14,17,21,9,19,9,20,9,15,14)

# initialize with 1
count <- 1

# replace NAs with chars
container <- rep(NA, length(code))

# message deciphered!
while(count <= length(code)){
  # current index value
  currentCodeValue<- code[count]
  
  #if this is NA->space
  theChar <- " "

  # if not NA, look up which character is meant!
  if(!is.na(currentCodeValue)){
   theChar <- letters[currentCodeValue]
  }
  
  # save the result into the vector
  container[count] <- theChar
  
  # increment
  count <- count + 1
}

# bind the results together!
paste(container, collapse="")

# If you want to practice for loops, rewrite this exercise with a for loop!
