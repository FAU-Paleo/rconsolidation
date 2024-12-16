# Solution to the exercise: Paraphrasing a sequence
# https://adamtkocsis.com/rkheion/Exercises/2022-12-12c_sequence_para.html

# the original code
start <- 4
end <- -9 
n <- end-start
a <- start
count <- 1
while(count <=abs(n)){
  a <- c(a, start- count)
  count <- count +1 
}

# Part 1. solution with seq()
seq(4, -9, -1)

# Part 2. Shorthand
4:-9

################################################################################
# Some more info about seq()

# different increments
seq(4, -9, -2)

# given length
seq(4, -9, length.out=100)

# decimal increment
seq(4, -9, -0.5)


# integer sequence
1:length(letters)
seq_along(letters)
