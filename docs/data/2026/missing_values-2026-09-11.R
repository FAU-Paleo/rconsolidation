
# example data
library(divDyn)
data(stages)

# degrade, i.e. add some missing values in it
stages$stage[nrow(stages)] <- NA
stages$series[93] <- NA

# na.omit will omit every row that has at least one missing value in it
# this is typically too destructive, usually used when you prepare
# the data for statistical modelling, or machine learning
veryClean<- na.omit(stages)

# if you want to make sure that a particular column has no missing values
# you can use the is.na function to detect those, invert it with the logical
# NOT operator, and use this a subscript for the rows. 
# NOTE: in this case it is really superfluous to put the logical vector in 
# the which() function, because is.na cannot have missing values in its output.
clean <- stages[!is.na(stages$stage),]
