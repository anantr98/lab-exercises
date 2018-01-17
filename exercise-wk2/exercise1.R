## Part 1: Debugging

my.num <- 6
initials <- "A. R."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This doesn't work because there is a string (initials) and a number (age) inside my.vector variable. We can't add values of different types.

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# This doesn't work because we haven't "libraried" the stringr package into the file.

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# The object was actually "initials" not "initial"


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
test <- c(1, 5, 3, 17, 27)
typeof(test)
# R considers it to be of type double.

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  n <- abs(length(v1)-length(v2))
  paste("The difference in lengths is", n)
}


# Pass two vectors of different length to your `CompareLength` function
v1 <- c(1, 2, 6, 8, 11)
v2 <- c(3, 5, 7, 9)
CompareLength(v1, v2)


# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  if (length(v1) < length(v2)) {
    print (paste("Your second vector is longer by", length(v2)-length(v1), "elements"))
  } else {
    print (paste("Your first vector is longer by", length(v1)-length(v2), "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
v3 <- c(4, 3, 6, 9, 0, 0, 3, 3, 1)
v4 <- c(2, 3, 1, 6)
DescribeDifference(v3, v4)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  result <- v1 + v2 + v3
} 

# Send 3 vectors to your function to test it.
test.1 <- c(2, 0)
test.2 <- c(9, 7)
test.3 <- c(1, 8)
result <- CombineVectors(test.1, test.2, test.3)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses) {
  gsub("[A-Z]","", courses)
}

