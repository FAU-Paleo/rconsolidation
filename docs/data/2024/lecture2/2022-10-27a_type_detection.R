#A
12
is.logical(12)
typeof(12)
class(12)
is.double(12)
is.numeric(12)


#B
5L
is.integer(5L)

#C
"TRUE"
is.logical("TRUE")
is.character("TRUE")

#D
3.4e10
is.integer(3.4e10) # FALSE
is.numeric(3.4e10)
is.double(3.4e10)

#E
33+1i
is.numeric(33+1i) # FALSE
is.complex(33+1i)

#F
# the result of:
typeof(0)
is.character(typeof(0))


# data.frame examples
data(mtcars)
is.list(mtcars)
is.data.frame(mtcars)
