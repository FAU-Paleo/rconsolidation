# Number coded message
#  https://adamtkocsis.com/rkheion/Exercises/2022-12-12b_number_coding.html

# 1. Example solution with while
# while loop
code <- c(14,15,2,15,4,25,NA,5,24,16,5,3,20,19,NA,20,8,5,NA,19,16,1,14,9,19,8,NA,9,14,17,21,9,19,9,20,9,15,14)

i <- 1
decode <- c()
solution <- c()

#for(i in 1:length(code))
while(i <= length(code)){
  if(!is.na(code[i])){
    decode[i] <- letters[code[i]]
    
  }else{
    decode[i] <- " "
  }
  
  if(i==length(code)){
    solution <- paste(decode, collapse="") 
    message(solution)
  }
  i <- i+ 1
  
}


# 1. Example solution with a for loop
# for loop
code <- c(14,15,2,15,4,25,NA,5,24,16,5,3,20,19,NA,20,8,5,NA,19,16,1,14,9,19,8,NA,9,14,17,21,9,19,9,20,9,15,14)

decode <- rep(NA, length(code))

for(i in 1:length(code)){
  if(!is.na(code[i])){
    decode[i] <- letters[code[i]]
  }else{
    decode[i] <- " "
  }
}
solution <- paste(decode, collapse="")
message(solution)


# 2. Example solution with vectorization
# Rish
decode <- letters[code]
decode[is.na(decode)] <- " "
solution <- paste(decode, collapse="") 
message(solution)


