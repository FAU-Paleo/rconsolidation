# Solutions to: https://adamkocsis.github.io/rkheion/Exercises/2022-12-12c_sequence_para.html
# 2023-12-05

###########
start <- 4
end <- -9 
n <- end-start
a <- start
count <- 1
while(count <=abs(n)){
  a <- c(a, start- count)
  count <- count +1 
}

# with the sequence function
seq(4, -9, by=-1)

# syntatic sugar (the same)
4:-9
