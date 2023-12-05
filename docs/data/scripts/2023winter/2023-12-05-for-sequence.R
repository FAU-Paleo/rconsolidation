# Solution to https://adamkocsis.github.io/rkheion/Exercises/2023-11-27_printing_numbers_for.html
# 2023-12-05

# memorize this!
for(i in 1:10) {
  message(i)
}


# also this! - the nested for
for(i in 1:10) {
  for(j in 1:10) {
    message(paste("i: ",i,  ", j: ", j, sep=""))
  }
}
