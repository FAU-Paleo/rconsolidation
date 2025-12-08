# Using a while and for loop to print out the first 10 letters

# print values from 1 to 10
for (i in 1:10) message(i)

# THE SAME with
# while()
i <- 1

while(i<=10){
  message(i)
  i <- i + 1
}

## # BEWARE THE INFINITE LOOP!
## # while
## i <- 1

## while(i<=10){
##   message(i)
## }
