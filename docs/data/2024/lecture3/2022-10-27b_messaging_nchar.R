# Messaging pasted values
# https://adamtkocsis.com/rkheion/Exercises/2022-10-24b_message_paste.html
text  <- "Thanks!"

theMessage <- paste0("Your string '", text, "' contains ", nchar(text), " characters!")
message(theMessage)
