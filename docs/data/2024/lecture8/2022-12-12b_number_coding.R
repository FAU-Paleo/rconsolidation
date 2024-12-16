# Solution to the exercise: Number-coded message
#https://adamtkocsis.com/rkheion/Exercises/2022-12-12b_number_coding.html


# the code
code <- c(14,15,2,15,4,25,NA,5,24,16,5,3,20,19,NA,20,8,5,NA,19,16,1,14,9,19,8,NA,9,14,17,21,9,19,9,20,9,15,14)


##############################################
# Solution 1. with a while loop

# start with a counter
count <- 1

# create a container to store the result (every number is letter)
container <- rep(NA, length(code))

# repeat as long as there are code items
while(count <=length(code)){
  # subscript of the letters
  subs <- code[count]
#  message(letters[subs])

	# if the current letter is missing, we need a space!
  if(!is.na(subs)){
    # store it in container
    container[count] <-  letters[subs]
  }else{
    container[count] <-  " "
  }

	# increment counter
  count <- count + 1
}

# the solution as a vector
container

# the solution as a single character value
paste(container, collapse="")



##############################################
# Solution 2. with a for loop (better!)

# create a container to store the result (every number is letter)
container <- rep(NA, length(code))

# as many iterations as there are code numbers
for(count in 1:length(code)){
  # subscript of the letters
  subs <- code[count]
  #  message(letters[subs])

	# if the current letter is missing, we need a space!
  if(!is.na(subs)){
    # store it in container
    container[count] <-  letters[subs]
  }else{
    container[count] <-  " "
  }

}

# the solution as a vector
container

# the solution as a single character value
paste(container, collapse="")


##############################################
# Solution 3. R-ish (based on vectorization principles)

# vectorized numeric subscripts
charCode<-letters[code]

# replace missing values
charCode[is.na(charCode)] <- " "

# and paste
paste(charCode, collapse="")


