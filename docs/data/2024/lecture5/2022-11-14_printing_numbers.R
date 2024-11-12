# About while: solving
# https://adamkocsis.github.io/rkheion/Exercises/2022-11-14_printing_numbers.html

# manual iteration
message(1)
message(2)
message(3)
message(4)
message(5)
message(6)
message(7)
message(8)
message(9)
message(10)

# - LAME!

# this way the same lines of code can be execued again and again:


# initialize i to something
i<- 0

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

i <- i + 1
message(i)

# we run the same lines again and again...


# initialize
i<- 0

# as long as the logical value in the parentheses is TRUE, this will be repeated
while(i< 10){
  i <- i + 1
  message(i)
}

# this is the same thing. It is more compact, and easier to read
# but while() can be more flexible
for(i in 1:10) message(i)






