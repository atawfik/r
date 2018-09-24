#R has five basic or "atomic" classes of objects
#character, numberic, integer, logical, complex

#The mode function returns the mode of R objects.
#The class function determines the class of an object or its "internal" type.

character.obj <- 'a'
mode(character.obj) # "character"
class(character.obj) # "character"

string.obj <- "abc" # String is considered as characters in R
mode(string.obj) # "character"
class(string.obj) # "character"

num.obj <- 2
mode(num.obj) # "numeric"
class(num.obj) # "numeric"

#numeric is the default in R, to create intger objects, we have to use as.integer function 
int.obj <- as.integer(num.obj) 
mode(int.obj) # "numeric" , still R will treat is as numeric during the computations
class(int.obj) # "integer"

logical.obj <- TRUE
mode(logical.obj) # "logical"
class(logical.obj) # "logical"


complex.obj <- 1+2i
mode(complex.obj) # "complex"
class(complex.obj) # "complex"


#Alternative ways to test the object mode using is.numeric(), is.charater(), and is.logical(), etc..
is.numeric(num.obj) # TRUE
is.logical(num.obj) # FALSE
is.character(string.obj) # TRUE

# The mode function is used with functions as well
mean(c(3,4,6,7)) # 5
mode(mean) # "function"
class(mean) # "function"
is.function(mean) # TRUE