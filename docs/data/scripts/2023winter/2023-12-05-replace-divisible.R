# solutions to: https://adamtkocsis.com/rkheion/Exercises/2023-11-26-replace_divisibility.html
########################################----------------------------------------
# 1. Using a while loop!
vec <- -100:100 

# iterate for every seventh value
count <- 7

while(count <= length(vec)){
  vec[count] <- 1000
  count <- count + 7
}

########################################----------------------------------------
# 2. Using a while loop!
# iterate for every  value
vec <- -100:100 
count <- 1

while(count <= length(vec)){
  if(count%%7==0) vec[count] <- 1000
  count <- count + 1
}

########################################----------------------------------------
# 3. Using a for loop
# iterate for every value
vec <- -100:100

# for every single index of vector
for(i in 1:length(vec)){
  # replace at divisible index
  if(i%%7==0) vec[i] <- 1000
}
