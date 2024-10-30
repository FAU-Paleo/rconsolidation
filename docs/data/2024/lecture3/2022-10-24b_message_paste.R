#  Messaging pasted values:
# https://adamtkocsis.com/rkheion/Exercises/2022-10-24b_message_paste.html

# From the website
name <- "Whatever"
age <- 45
input <- paste("I am", name, "and I am", age, "years old.", sep="")
message(input)


# solution with paste0
input <- paste0("I am ", name, " and I am ", age, " years old.")
message(input)
