a="Tasnia"
b="Rahman"
num1=13
num2=12
sum=num1+num2
sub=num1-num2
print(sum)
print(sub)
num1==num2
num1!=num2

#vectors
vac1 <- c(1,2,3)
vac2 <- c(T,F,T,T)
vac3 <- c(3,2,1,5)
print(class(vac1))
#Complex data 

c1<- 5+3i
c2 <- 3+7i
com <- c1 + c2 
print(com)

# convert data type 

d1 <- 34.98
d2 <- "Tasnia "
d3 <- 300

DCon <- as.integer(d1)
DCon2 <-as.numeric(d3)
print(DCon)
print(DCon2)
print(class(DCon2))


#Conditions and If else 

#1 

a <- 3
b <- 20

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}

#2 
a <- 40
b <- 50
c <- 80

if (a >= 30 & a < 50) {
  print("You get B grade ")
} else if (b >= 50 & b < 80) {
  print("You get A grade ")
} else if (c >= 80 & c < 100) {
  print("You get A+ grade ")
} else {
  print("You fail the exam ")
}


# 3 

a <- 2
b <- 3
c <- 50
if (a > b | a > c) {
  print("At least one of the conditions is true")
}

#While loop 
#1

dice <- 3
while (dice <= 6) {
  if (dice < 6) {
    print(" Your Dice number is less then 6 ")
  } else {
    print("Congratulations ! Your number is 6 . ")
  }
  dice <- dice + 1
}




#2
i <- 3
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}


#For loop 

#1

char <- list("a", "b", "c","d")

for (x in char) {
  if (x == "c") {
    break
  }
  print(x)
}

#2

Uni <- list("DIU","IUBAT","DU","JU")
for (a in Uni){
  if (a=="DIU"){
   Print(" Welcome to DIU university ")
  }
  print(a)
}


#Function
my_function <- function() {
  print("Welcome In R peogramming Tasnia ")
}

my_function()

#2 
TF <- function(fname) {
  paste(fname, "Griffin")
}

TF("Peter")
TF("Lois")
TF("Stewie")


# sum calculation using function method 

sum_numbers <- function(a, b) {
  return(a + b)
}
sum_numbers(5, 7) 
#Nested 
square_outer <- function(a) {
  square_inner <- function(b) {
    return(a^b)
  }
  return(square_inner)
}
square_fn <- square_outer(2)
square_fn(3)  


#Recursion function using Factorial
factorial_recursive <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}
factorial_recursive(5)  



#Vectors
numbers <- c(5, 2, 9, 1, 7)

names <- c("Tasnia", "Niloy", "Utshab", "Reza","Tonima")

logical_values <- c(TRUE, FALSE, TRUE, TRUE)

sequence_vector <- seq(1, 10, by=2) 
repeated_vector <- rep(c("A", "B", "C"), times=2)  
# Print all vectors
print(numbers)
print(names)
print(logical_values)
print(sequence_vector)
print(repeated_vector)


#Sorting vector

sorted_numbers <- sort(numbers) 
sorted_numbers_desc <- sort(numbers, decreasing = TRUE) 

print(sorted_numbers)
print(sorted_numbers_desc)


#Accessing Vector 

first_element <- numbers[1]
third_element <- numbers[3]
subset_vector <- numbers[c(1, 4)]
greater_than_five <- numbers[numbers > 5]

print(first_element)
print(third_element)
print(subset_vector)
print(greater_than_five)



#list 
#1 

mixed_list <- list(5, "hello", TRUE, c(1, 2, 3))
mixed_list[[4]][2] 

#2 
my_list <- list(
  name = "Tasnia", 
  age = 26, 
  scores = c(85, 90, 78),
  passed = TRUE
)

print(my_list)


#Matrix 
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)

print(my_matrix)

print(my_matrix[2, 3]) 
print(my_matrix[1, ]) 
print(my_matrix[, 2]) 



















