# solution to Nested if statements 
# https://adamtkocsis.com/rkheion/Exercises/2023-10-23-nested_if.html


# for example
temperature <- 26
raining <- TRUE

# Wear a jacket if temperature is below 15
if(temperature < 15){
  jacket <- "Wear a jacket!"

# if at least 15
}else{
  if(temperature > 25){
    jacket <- "Don't wear a jacket!"
    
  }else{
    if(raining){
      jacket <- "Wear a jacket!"
    }else{
      jacket <- "Don't wear a jacket!"
    }
    
  }
  
}

# print to console
message(jacket)
