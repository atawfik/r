# There are different storage types available in R to handle data with multiple elements
# vector, list, matrix, and data frame.

# A vector is a group of indexed components of the same type, it's the most basic object in R.
# Everything in R is a vector, a single valued object is actually a vector of one component. 
# R has six storage types of vectors, the five atomic classes of objects + raw (bytes).


one.num.vector <- 3
mode(one.num.vector) # "numeric"
class(one.num.vector)  # "numeric"
is.vector(one.num.vector) # TRUE
length(one.num.vector)# 1

# creating a vector as a group of indexed components vector() function, this will create an empty vector
empty.vec <- vector("numeric", length = 5)
empty.vec # 0 0 0 0 0
length(empty.vec)# 5

# creating a vector as a group of indexed components using  "c" function
# creating vector of numeric elements
num.vec <- c(1,3,5,7)
mode(num.vec) # "numeric"
class(num.vec) # "numeric"
is.vector(num.vec) # TRUE

# Vector with mixed elements (Coercion)

num.log.vec <- c(1, 3, TRUE, 5, FALSE, 9)  # numeric + logical = numeric 
mode(num.log.vec) # "numeric"
class(num.log.vec) # "numeric"
is.vector(num.log.vec) # TRUE

num.char.vec <- c(1,3,"five",7) # numeric + character = character 
mode(num.char.vec) # "character"
class(num.char.vec)  # "character"
is.vector(num.char.vec) # TRUE

num.log.char.vec <- c(1,2,TRUE,FALSE,"a") # numeric + logical + character = character
mode(num.log.char.vec) # "character"
class(num.log.char.vec) # "character"
is.vector(num.log.char.vec) # TRUE

# Vector of vectors
comb.vec <- c(num.vec, num.char.vec)
comb.vec # "1"    "3"    "5"    "7"    "1"    "3"    "five" "7"  
mode(comb.vec) #"character"
class(comb.vec) #"character"
is.vector(comb.vec) # TRUE"


# named vector of type numeric
named.num.vec <- c(x1=1,x2=3,x3=5)
named.num.vec # x1 x2 x3 1  3  5 
mode(named.num.vec) # "numeric"
class(named.num.vec) # "numeric"
is.vector(named.num.vec) # TRUE"
names(named.num.vec) <- letters[1:3] #another way to name vector elements using names() function.
named.num.vec # a b c 1  3  5  

# converting vector atomic data type
numbers.vec <- c(-3,-2,-1,0,1,2,3)
numbers.vec # -3 -2 -1  0  1  2  3
num2char <- as.character(numbers.vec)
num2char # "-3" "-2" "-1" "0"  "1"  "2"  "3" 

#get the length of a vector using length method
length(num2char) # 7

# access vector elements using vector index, the index starts from 1
numbers.vec[3] # -1
num2char[5] # "1"


#add new element to the vector using vector index
num2char[8] <- "10"
num2char[8] # "10"

#remove an element from the vector using vector index
num2char <-  num2char[-8]
num2char[8] # NA (Not Available)

#add multiple elemnts to the vector using append method
append(num2char, 0:1, after = 7) # adds two components (0 & 1) after index 7


#check whether there is any value of numbers.vec object greater than 2, this will return a vector of logical objects
obj.great.two <-  numbers.vec > 2 
obj.great.two #  FALSE FALSE FALSE FALSE FALSE FALSE  TRUE

# keeping only values greater than 0, put the vector of logical objects as the new index
numbers.vec[numbers.vec > 0] #1 2 3

#Another useful function for creating vectors generates sequences, seq(start, end, increments)
obj.one.to.ten <- seq(1, 10)
obj.odd.one.to.ten <- seq(1, 10, 2)
obj.even.one.to.ten <- seq(2, 10, 2)
