
# function to calculate the mean
mean.new <- function(a){
  
  if(!is.vector(a)) 
    return("I don't deal with non vectors!")
  
  sum(a) / length(a)
}

# function to calculate the standard devation
sd.new <- function(a){
  
  # step 1. sample mean
  mean.a <- mean.new(a)
  
  # step 2. square the deviations from the mean (the wee boxes)
  sq.deviations <- c()
  for(i in a){
    sq.deviations <- c(sq.deviations, ((i - mean.a)^2) )
  }
  
  # step 3. calculate the sum of squared deviations
  sq.deviations.sum <- sum(sq.deviations)
 
  # step 4. calculate the average squared differences from the mean
  # accounting for the expected diff between the true population mean and the sample mean
  average.squared.diffs <- sq.deviations.sum / ( length(a) - 1)
  # This step gives you the variance

  # step 5. unsquare to get the standard deviation
  sd <- average.squared.diffs^0.5
    
  return(sd)
}

# put the functions to use
v <- c(1:40)

sd.new(v)

# validate your new function

var(v)^0.5
