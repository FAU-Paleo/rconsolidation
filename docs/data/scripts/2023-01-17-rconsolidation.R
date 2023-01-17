# Homework
# 2023-01-17

# My solution to
# https://adamkocsis.github.io/rkheion/Exercises/2022-12-12_read_in_files.html
# Part 1
volcano <- readRDS("C:/Users/Adam/Downloads/volcano.rds")
str(volcano)
filled.contour(volcano)

# Part 2
normal <- scan("C:/Users/Adam/Desktop/normal.txt")
str(normal)
hist(normal)


# Part 3
# set working directory
setwd("C:/Users/Adam/Documents/data")
x <- scan("spiral_x.txt")
y <- scan("spiral_y.txt")
plot(x,y, col="#44999911", pch=16, cex=2)


###################
# Solution to
# https://adamkocsis.github.io/rkheion/Exercises/2022-12-12b_number_coding.html
code <- c(14,15,2,15,4,25,NA,5,24,16,5,3,20,19,NA,20,8,5,NA,19,16,1,14,9,19,8,NA,9,14,17,21,9,19,9,20,9,15,14)

# separate subsctipts
letters[14]
letters[15]
letters[2]

### Solution as a while loop
# character vector
container <- NULL


# the number of values in the code
n <- length(code)

# what changes in every iteration
counter <- 1

# iteration
while(counter <= n){
 current <- code[counter]
 
 # only when current is NA
 if(is.na(current)){
   container <- c(container, " ")
 }else{
   # only when current is not a missing value
   container <- c(container, letters[current])
 }
  # incrementing   
  counter <- counter + 1 
}

paste(container, collapse="")

####################################
# for loop()
####################################

# Printing every value in a vector
code

# the number of values
n <- length(code)

# counter
counter <- 1


while(counter<=n){
	# select the current value
	current <- code[counter]

	# print the message
	message(current)

	# increment the counter
	counter <- counter + 1
}

# repeat instruction for every value of code
# the current value is accessible with <current>
for(current in code){
  message(current)
}


# the current value is accessible with <current>
for(i in code){
  message(i)
}

# printing the letters with message
for (i in letters) message(i)

#  the same with numbers
se <- 1:10
se

for (i in se) message(i+3)


#############################################################
# solution to:
# https://adamkocsis.github.io/rkheion/Exercises/2022-12-12c_sequence_para.html

# The original code is:
start <- 4
end <- -9 
n <- end-start
a <- start
count <- 1
while(count <=abs(n)){
  a <- c(a, start- count)
  count <- count +1 
}


# solution with seq()
seq(from=4, to=-9)

# solution with the colon operator
4:-9

# such sequences are frequently used to define iterations
# This is the simplest iteration that we can do. 
for(i in 1:10) message("Great!")
for(i in 1:10) message(i)


