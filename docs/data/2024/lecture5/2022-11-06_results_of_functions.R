
f1 <- function(x) x^2

f2 <- function(a, b) a - b + 1 

f3 <- function(x){
  val <- paste0("R would say '", x, "'.")
  return(val)
}

f4 <- function(x){
  return(x == 4)
}


f1(10)

f2(4, 3)

f3("wicked!")

f4(4)

f4(NA)

