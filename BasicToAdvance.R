#DAta Type

4
5 + 9
4L
4L + 6L
typeof(4L)
typeof(4L + 6L)
typeof(4)
typeof(4 + 7)
typeof("Tasnia")

typeof("TRUE")
typeof(TRUE)
typeof(FALSE)
typeof(0) # ctrl + enter , Alt + enter
typeof(1)
typeof("1")
typeof(2 + 5i)
TRUE == 1
FALSE == 0

typeof(c(3, 4, 5, 6))
typeof(c(3L, 4L, 5L, 6L))


#ADDITION

a <- 4
b <- 8
a + b
print(a + b)

print(a - b)

age <- c(30, 13, 23, 25, 34)

m <- 5
n <- 5

m + n
m - n
m / n
m %% n

#sequence / one dimentonal vector

x <- 1:20
x
x[7]
x[12]

y <- 30:100
y

# Matrix

matrix(c(3, 2, 4, 6, 4, 7), ncol = 3, nrow = 2)

mat1 <- matrix(c(3, 2, 4, 6, 5, 3) , ncol = 2, nrow = 3)
mat2 <- matrix(c(4, 3, 6, 3, 8, 9), ncol = 3, nrow = 2)
mat1
mat2
mat1 %*% mat2 # matrix multiplication

# finding any value

x1 <- c("apple", "orange", "Mango")

"Banana" %in% x1
"apple" %in% x1
"Apple" %in% x1


# Logical operation

x <- c(T, F, F)
y <- c(T, F, T)
x | y
x & y


# (1.24) Some Inbuild Function

x <- c(3, 2, 45, 12, 34, 54, 6, NA, 34, NA)
summary(x)
sum(x)

y <- c(4, 2, 5, 6, 7, 1, 4, 7)
sum(y)
mean(y)
min(y)
median(y)
quantile(y)
sd(y)
range(y)
summary(y)


#others Mathematical operations
y <- c(4, 2, 5, 6, 7, 1, 4, 7)
sqrt(y)
abs(y)
log(y)
exp(y)
help(abs)


z <- c(3, 2, 45, 12, 34, 54, 6, NA, 34, NA)
is.na(z)
which(is.na(z))
any(is.na(z))
summary(z)


num <- c(2.3465, 23.8765432, 8.56789)
round(num)
round(num, 2)
round(num, 3)

floor(num)
ceiling(num)


help(floor)

help("vector")

------------------------------------------------------------------------------------------#single Data Type (Vector,Matrix,Array) (1.44)
  # Multiple Data Type (DAta Frame , List )
  
  x1 <- c(10, 19, 15, 18, 1, 4, 23, 2, 4)
is.vector(x1)
is.data.frame(x1)


## Random Number generator

#if we don't use seed function then mean,median and others never get same
x2 <- sample (1:200, 10)
x2
summary(x2)
sum(x2)

# we use seed function result always be same
set.seed(126)
x3 <- sample (1:100, 12)
x3
summary(x3) # (2.8)

# Random Number Generation And Table Creation

sample(1:10, 8, replace = TRUE)
set.seed(42)
table(sample(1:10, 8, replace = TRUE))# kon number kotobar ascha ta table function diya check kora jai

sample(c("Apple", "Bannana", "Mango"), 2)
help(sample)
set.seed(1)
sample(
  c("apple", "mango", "bananna", "orangr", "Lichi"),
  size = 3,
  prob = c(0.3, 0.4, 0.8, 0.2, 1)
)
sample(
  c("apple", "mango", "bananna", "orangr", "Lichi"),
  size = 3,
  prob = c(0.3, 0.4, 0.1, 0.2, 0),
  replace = TRUE
)

income = c(10000, 25000, 4000, 8000)
household = c(10, 5, 3, 2)
sample(income, size = 2, prob = household) #for prob in backend : household/sum(household)

x2 <- runif(13)
x2
x3 <- runif(10) * 10
x3
set.seed(4)
x2 <- runif(13)
x2



##Sequence Generation

x <- seq(from = 1 , to = 11 , by =  2) # help function keyboard shortcut == F1 click korbo
x

x2 <- seq(from = 1 , to = 10 , length = 7)
x2
seq_len(10)


#### Selection vector

x1 <- c(10, 15, 20, 21, 24, 13, 20, 19)
x1
x1 > 19
x1 [3]
length(x1)
x1[x1 > 19]
x1 [x1 > 14 & x1 < 20]
which(x1 > 14 & x1 < 20) # 2.38
x1[which(x1 > 14 & x1 < 20)]

## replace

x1 <- c(10, 15, 20, 21, 24, 13, 20, 19)
replace (x1, which(x1 > 19), 18.44)

replace (x1, x1 > 19, 16) #or
x1[x1 > 19] <- 17.5 #or
x1
x1
x1 <- replace (x1, which(x1 > 19), 0)
x1

x1[x1 == 0] <- 15
x1

### Matrix

mat1 <- matrix(c(2, 1, 3, 45),
               ncol = 2,
               nrow = 2,
               byrow = TRUE)
mat1
is.matrix(mat1)

mat2 <- c(3, 2, 5, 7)
is.matrix(mat2)

mat2 <-  matrix(c(3, 2, 5, 7), ncol = 4)
is.matrix(mat2)


mat3 <- matrix(c(4, 3, 2, 5), ncol = 2 , nrow = 2)
mat3

mat3[, ]
mat3[1, ]
mat3[, 2]
mat3[1, 2]
mat3[2, 2]
mat3[1, 2] <- 10
mat3
mat3[3, 3] # Not Found


mat4 <- matrix(c(4, 3, 2, 5), 2 , 2 , TRUE)
mat4

mat5 <- matrix(c(4, 3, 2, 4, 5, 7), 2 , 3 , TRUE)
mat5

mat6 <- matrix(c(4, 3, 2, 5, 6, 3), 2 , 3 , TRUE)
mat6

##Matrix Multiplication

#1
mat3 %% mat4
dim(mat3)
dim(mat3 %% mat4)

#2
mat4 %% mat5 #error for wrong dimention
dim(mat5)

#3
mat5 %% mat6
dim(mat5)
dim(mat6)
dim(mat5 %% mat6)

## Mathematics  calcullation
mat3 + mat4
mat3 - mat4
mat3 + 10
mat4 - 10

diag(mat4) # diagonal

solve(mat4) # inverse Matrix


##### Data Frame

#1
df1 <- data.frame(
  id = c(1, 2, 3),
  age = c(24, 23, 19),
  gender = c("F" , "M" , "F")
)
df1
is.data.frame(df1)
summary(df1)

#2 or (For Carrecter summary )

df1 <- data.frame(id = c(1, 2, 3),
                  age = c(24, 23, 19),
                  gender = factor(c("F" , "M" , "F")))



df1
is.data.frame(df1)
summary(df1)



#3
# stringAsFactors normally use hoi character type data tha number assign kora.
#Normally number 1 thaka assign kora hoi


df1 <- data.frame(
  id = c(1, 2, 3),
  age = c(24, 23, NA),
  gender = c("F" , "M" , "F"),
  location = c("Dhaka", "Narsingdi", "Khulan"),
  stringsAsFactors = TRUE
)


df1
is.data.frame(df1)
summary(df1)

#4

df1 <- data.frame(
  id = c(1, 2, 3),
  age = c(24, 23, NA),
  gender = c("F" , "M" , "F"),
  location = c("Dhaka", "Narsingdi", "Khulan"),
  stringsAsFactors = FALSE
)


df1
is.data.frame(df1)
summary(df1)

#5
df1 <- data.frame(
  id = c(1, 2, 3),
  age = c(24, 23, 17),
  gender = c("F" , "M" , "F"),
  location = c("Dhaka", "Narsingdi", "Khulan"),
  stringsAsFactors = TRUE
)


df1
is.data.frame(df1)
summary(df1)



## subsetting (kono nirdisto kolam kivabe bair korbo ta)
df1$id
df1$age
mean(df1$age , na.rm = TRUE)   # na.rm = TRUE aita null value bad diya mean calculate kora dai
df1$gender

### Row and Column Names

rownames(df1)
colnames(df1)
# column name change & assign process

colnames(df1) <- c("ID" , "Age_User", "Grnder_Of-Respondent", "Location")

colnames(df1)[colnames(df1) == "Age_User"] <- "Age"
colnames(df1)

# Row namw change

rownames(df1) <- c("P-1", "P-2", "P-3")
rownames(df1)

df1

### Data Filter  (As like Matrix )

df1[2, ]
df1[, 1]
df1[c(1, 4), ]
df1$Age_User <= 23
! is.na(df1$Age_User)
df1[df1$Age_User <= 23 & !is.na(df1$Age_User), ]

## add new column

df1$height <- c(5.5, 6, 5.3)
df1


df1 <- data.frame(
  id = c(1, 2, 3),
  age = c(24, 23, 17),
  gender = c("F" , "M" , "F"),
  location = c("Dhaka", "Narsingdi", "Khulan"),
  stringsAsFactors = TRUE
)

df1
df1$Age <- df1$age * 12
df1


####### List
#1
ls1 <- list(c(1, 2, 4, 3), c(24, 23, 10, 19), c("M", "F", "M"))
ls1

ls1[[2]]
ls1[[3]][1]
ls1[[3]][7]  #NA

#2

df1 <- data.frame(
  id = c(1, 2, 3),
  age = c(24, 23, 17),
  gender = c("F" , "M" , "F"),
  location = c("Dhaka", "Narsingdi", "Khulan"),
  stringsAsFactors = TRUE
)
ls2 <- list(
  id = c(1, 2, 4, 3),
  age = c(24, 23, 10, 19),
  gender = c("M", "F", "M"),
  df = df1
)
ls2
ls2$df

is.data.frame(ls2$df)
is.data.frame(ls2)

str(ls2)


--------------------------------------------------------------------------------------------------# ; & {} we use when we need to run multiple line code
  # ctrl + shift + A ( Reformat )
  
  print("Hello")
1 + 5

{
  print("Hello")
  1 + 5
}

print("Hello")
1 + 5

###################################################################################################

# Conditional -------------------------------------------------------------


x <- 3

if (x > 0) {
  print("x is positive")
} else {
  print("x is not positive")
}



x <- -1


if (x > 0) {
  print("x is positive")
} else if (x < 0) {
  print("x is negative")
} else {
  print("x is zero")
}



x <- 0
if (x > 0) {
  if (x %% 2 == 0) {
    print("x is positive and even")
  } else {
    print("x is positive and odd")
  }
} else {
  print("x is not positive")
}


## Vectorized version ####

x <- c(1, 3, 0, 5, 99)
ifelse(x > 90, "Yes", "No")
ifelse(x > 90, "Yes", ifelse(x == 0, "zero", "No"))

## switch ####

operation <- "root"
val <- 9

switch(operation, "square" = val^2, "root" = sqrt(val), NA)


# Loop --------------------------------------------------------------------


## for loop ####


numbers <- c(2, 4, 6, 8)
for (i in numbers) {
  print(paste("Square of", i, "is", i^2))
}

 ## while loop ####

count <- 5
while (count > -10) {
  print(count)
  count <- count - 1
}

## repeat #####

repeat {
  print("This is an infinite loop. Press ESC to stop.")
  Sys.sleep(1)  # Pause for 1 second
}



# Stop when counter exceeds 5
counter <- 1
repeat {
  print(counter)
  counter <- counter + 1
  if (counter > 5) {
    break
  }
}



# Stop when the sum exceeds 20
cumulative_sum <- 0
i <- 1
repeat {
  cumulative_sum <- cumulative_sum + i
  print(cumulative_sum)
  i <- i + 1
  if (cumulative_sum > 20) {
    break
  }
}

# alternative way
cumsum(1:10)


# user input
readline()

x <- as.integer(readline("Enter your number: "))
x

repeat {
  input <- as.integer(readline(prompt = "Enter a number between 1 and 10: "))
  if (!is.na(input) & input >= 1 & input <= 10) {
    print(paste("You entered:", input))
    break
  } else {
    print("Invalid input, try again.")
  }
}



## 'Apply' functions ####

mat <- matrix(1:9, nrow = 3, byrow = TRUE)
mat
sum()
apply(mat, 1, sum)  # Sum of each row
apply(mat, 2, sum)  # Sum of each column

rowSums(mat)
colSums(mat)

rowMeans(mat)
colMeans(mat)

## tapply ####

# tapply performs operations on subsets of the object of interest
df1 <- data.frame(
  age = c(22, 20, NA, 24, 19, 23),
  gender = c("M", "F", "F", "M", "M", "F"),
  location = c("Rural", "Urban", "Urban", "Rural", "Rural", "Rural"),
  stringsAsFactors = TRUE
)
df1

tapply(
  X = df1$age,
  INDEX = df1$gender,
  FUN = mean,
  na.rm = TRUE
)
tapply(
  X = df1$age,
  INDEX = list(df1$gender, df1$location),
  FUN = mean,
  na.rm = TRUE
)


## lapply and sapply ####

ls3 <- list(id = c(1, 2, 3),
            age = c(24, 23, 19),
            df = df1)
ls3
lapply(ls3, is.data.frame)
sapply(ls3, is.data.frame)

##################################################################################
# Function ----------------------------------------------------------------

sum_two_vals <- function(x, y) {
  print(paste("value of x =", x))
  print(paste("value of y =", y))
  return(x + y)
}

sum_two_vals(x = 3, y = 10)
sum_two_vals(400, 10)


greet <- function(name) {
  cat("Hello, ", name, "!\n", sep = "")
}

greet(name = "Ahsan")

check_even_odd <- function(number) {
  if (number %% 2 == 0) {
    return("Even")
  } else {
    return("Odd")
  }
}

check_even_odd(4)
check_even_odd(7)



## multiple argument and return ####

math_operation <- function(x, y, op) {
  switch(
    op,
    "add" = x + y,
    "subtract" = x - y,
    "multiply" = x * y,
    "divide" = if (y != 0) {
      x / y
    } else {
      "Division by zero!"
    },
    "Invalid operation"
  )
}

math_operation(10, 5, "add")
math_operation(10, 5, "divide")
math_operation(10, 0, "divide")



## default value ####

calculate_sqrt <- function(val, digit = 2) {
  rooted <- sqrt(val)
  out <- round(rooted, digit)
  return(out)
}

round(sqrt(1001), 2)
calculate_sqrt(1001, 1)
calculate_sqrt(1001)

calculate_sqrt <- function(val, digit) {
  rooted <- sqrt(val)
  out <- round(x = rooted, digits = digit)
  return(out)
}

calculate_sqrt(1001)
# Here, default value for digit is passed since no value is assigned in digit


## Scoping assignment ####

begin <- function() {
  begin_time <<- Sys.time()
  
  message("Program started: ", begin_time)
}

end <- function() {
  end_time <<- Sys.time()
  runtime <<- as.numeric(format(end_time, "%s")) - as.numeric(format(begin_time, "%s"))
  message("Program end: ", end_time)
  message("Runtime stored in \"runtime\"")
}

begin()
Sys.sleep(3)
end()  # system will pause for 3 seconds



## invisible ####

trial_func_ret <- function(x) {
  res <- mean(x)
  return(res)
}

trial_func_inv <- function(x) {
  invisible(res)
}

vals <- c(4, 5, 2, 6, 9)

trial_func_ret(x = vals)

trial_func_inv(x = vals)

a <- trial_func_inv(x = vals)
a

## Multiple Output ####

mtcars
iris

modify_data <- function(data1, data2) {
  a <- data1[1:10, ]
  b <- data2[2:5, ]
  return(list(first = a, second = b))
}

res <- modify_data(data1 = mtcars, data2 = iris)
res$first


model <- lm(Sepal.Width ~ Sepal.Length, data = iris)
summary(model)
model$residuals

plot(iris$Sepal.Width, model$residuals)


## temporary function ####

mat1 <- matrix(c(1, 2, 3, 4),
               ncol = 2,
               nrow = 2,
               byrow = TRUE)

apply(mat1, 1, sum)^2

apply(mat1, 1, function(x)
  sum(x)^2)
apply(mat1, 2, function(x)
  sum(x)^2)

## ellipsis ####

wrapper_mean <- function(data, ...) {
  if (is.numeric(data)) {
    mean(data, ...)
  } else{
    warning("Data is not numeric")
  }
}

wrapper_mean(c(2, 4, 5, NA, 3))
wrapper_mean(c(2, 4, 5, NA, '3'))
wrapper_mean(c(2, 4, 5, NA, '3'), na.rm = TRUE)
wrapper_mean(c(2, 4, 5, NA, 3, 10, 99), na.rm = TRUE, trim = 0.4)


## function as argument ####

apply_function <- function(vec, fun) {
  return(fun(vec))
}

# Example usage
apply_function(c(1, 2, 3, 4), fun = mean)
apply_function(c(1, 2, 3, 4), fun = max)
apply_function(c(1, 2, 3, 4), fun = is.numeric)


## Roxygen comments ####

#' @title calculate_sqrt
#' @description Calculates square root of the numbers.
#' @param val numeric vector or length 1 or more
#' @param digit numeric value
#' @return numeric vector that is squared root of the passed vector
#' @examples
#'   calculate_sqrt(c(6,10,453), 4)
#'   calculate_sqrt(c(2,3,4), 2)
#'
calculate_sqrt <- function(val, digit = 3) {
  return(round(sqrt(val), digit))
}


# Packages ----------------------------------------------------------------

install.packages("dplyr")
library(dplyr)

  # Load packages -----------------------------------------------------------

# install.packages(dplyr)

library(dplyr)


# Sample data -------------------------------------------------------------

data <- data.frame(
  ID = 1:10,
  Name = c(
    "Shihab",
    "Kabir",
    "Mahbub",
    "Pranto",
    "Nusrat",
    "Mumu",
    "Meraj",
    "Supto",
    "Mujahid",
    "Asik"
  ),
  Age = c(25, 30, 35, 40, 28, 32, 45, 29, 50, 27),
  Salary = c(
    50000,
    55000,
    60000,
    45000,
    70000,
    52000,
    48000,
    68000,
    65000,
    40000
  ),
  Department = c(
    "HR",
    "Finance",
    "IT",
    "HR",
    "IT",
    "Finance",
    "IT",
    "HR",
    "Finance",
    "IT"
  ),
  Performance_Score = c(88, 92, 85, 78, 90, 94, 86, 80, 89, 75)
)

print(data)


# Filtering rows ----------------------------------------------------------

## Base R examples ####

# Filter rows where Age > 30
data[data$Age > 30, ]

data[Age > 30, ]

attach(data)
data[data$Age > 30, ]
detach(data)


# Filter rows where Department is "IT"
data[data$Department == "IT", ]

# Filter rows where Performance_Score >= 90
data[data$Performance_Score >= 90, ]

# Filter rows where Age > 30 and Department is "Finance"
data[data$Age > 30 & data$Department == "Finance", ]

# Filter rows where Department is in a specific set
data[data$Department %in% c("HR", "IT"), ]

# Exclude rows where Department is "HR"
data[data$Department != "HR", ]


## dplyr examples ####

# pipe ( %>% ) operator is actually part of 'magrittr' package

round(mean(c(12, 34, 24, 35, 23, 34, 12.342)), 1)

c(12, 34, 24, 35, 23, 34, 12.342) %>%
  mean() %>%
  round(1)

# Shortcut for %>% : CTRL + SHIFT + M

c(12, 34, 24, 35, 23, 34, 12.342) |>
  mean() |>
  round(1)


# Filter rows where Age > 30
filter(data, Age > 30)
data %>% filter(Age > 30)

# Filter rows where Department is "IT"
data %>% filter(Department == "IT")

# Filter rows where Performance_Score >= 90
data %>% filter(Performance_Score >= 90)

# Filter rows where Age > 30 and Department is "Finance"
data %>% filter(Age > 30, Department == "Finance")

# Filter rows where Name is in a specific set
data %>% filter(Department %in% c("IT", "Finance"))

# Exclude rows where Department is "HR"
data %>% filter(Department != "HR")


data %>% slice(10)
data %>% slice(1:10)
set.seed(0)
data %>% slice_sample(n = 3)


# Selecting columns  ------------------------------------------------------

## Base R ####

# Select a single column by name
data["Name"]  # Returns a data frame
data$Name     # Returns a vector

# Select multiple columns by name
data[, c("Name", "Age")]

# Select columns by position
data[, c(1, 2, 5, 6)]  # First and second columns

# Exclude columns by name
data[, !(names(data) %in% c("Department"))]

# Exclude columns by position
data[, -3]  # Excludes the third column

## dplyr ####

# Select a single column by name
data %>% select(Name)

# Select multiple columns by name
data %>% select(Name, Age)

# Select columns by position
data %>% select(1, 2, 6)

# Exclude columns by name
data2 <- data %>% select(-c(Department, ID))

# Exclude columns by position
data %>% select(-3)

# Select columns based on patterns (e.g., columns starting with "P")
data %>% select(starts_with("P"))
data %>% select(contains("age"))

# Select columns based on data type
data %>% select(where(is.numeric))
data %>% select(where(is.character))




# Creating columns --------------------------------------------------------

## Base R ####

# Add a new column with a existing values
data$Experience <- c(2, 5, 10, 3, 8, 4, 2, 1, 1, 6)

# Add a constant value
data$Constant_Column <- 1
data

# Add a calculated column
data$Bonus <- data$Salary * data$Performance_Score * 0.0001
data

# Add a column using conditional logic
data$High_Performer <- ifelse(data$Performance_Score >= 85, TRUE, FALSE)
data
data[data$High_Performer, ]

data$Low_Performer <- !data$High_Performer
data

## dplyr ####

# Add a new column with a computed value
data3 <- data %>%
  mutate(
    Experience = c(2, 5, 10, 3, 8, 4, 2, 1, 1, 6),
    # Add a new column with a existing values
    Constant_Column = 1,
    # Add a constant value
    High_Performer = Performance_Score >= 85,
    # Add a column using conditional logic
    Low_Performer = !High_Performer,
    # Add a column using conditional logic
    Bonus = Salary * Performance_Score * 0.0001      # Add a calculated column
  )


# Removing columns --------------------------------------------------------

## Base R ####

# Remove a column by assigning NULL
data3$Constant_Column <- NULL
data3

# Remove multiple columns using subset
data3 <- data3[, !(names(data3) %in% c("High_Performer", "Low_Performer", "Experience"))]
data3

## dplyr ####

data <- data.frame(
  ID = 1:10,
  Name = c(
    "Shihab",
    "Kabir",
    "Mahbub",
    "Pranto",
    "Nusrat",
    "Mumu",
    "Meraj",
    "Supto",
    "Mujahid",
    "Asik"
  ),
  Age = c(25, 30, 35, 40, 28, 32, 45, 29, 50, 27),
  Salary = c(
    50000,
    55000,
    60000,
    45000,
    70000,
    52000,
    48000,
    68000,
    65000,
    40000
  ),
  Department = c(
    "HR",
    "Finance",
    "IT",
    "HR",
    "IT",
    "Finance",
    "IT",
    "HR",
    "Finance",
    "IT"
  ),
  Performance_Score = c(88, 92, 85, 78, 90, 94, 86, 80, 89, 75)
)

## Removing Columns with dplyr

# Remove a single column
data <- data %>% select(-Performance_Score)

# Remove multiple columns
data <- data %>% select(-c(Department, Age))

# Remove columns based on a condition
data %>% select(-where(is.character))
# Note: You can use "selection helpers" in select()



# Editing column ------------------------------------------------------------
data <- data.frame(
  ID = 1:10,
  Name = c(
    "Shihab",
    "Kabir",
    "Mahbub",
    "Pranto",
    "Nusrat",
    "Mumu",
    "Meraj",
    "Supto",
    "Mujahid",
    "Asik"
  ),
  Age = c(25, 30, 35, 40, 28, 32, 45, 29, 50, 27),
  Salary = c(
    50000,
    55000,
    60000,
    45000,
    70000,
    52000,
    48000,
    68000,
    65000,
    40000
  ),
  Department = c(
    "HR",
    "Finance",
    "IT",
    "HR",
    "IT",
    "Finance",
    "IT",
    "HR",
    "Finance",
    "IT"
  ),
  Performance_Score = c(88, 92, 85, 78, 90, 94, 86, 80, 89, 75)
)
## Base R ####

# Rename a column
colnames(data)[which(colnames(data) == "Salary")] <- "Monthly_Salary"

# Modify an existing column
data$Age <- data$Age + 1

## dplyr ####

data <- data.frame(
  ID = 1:10,
  Name = c(
    "Shihab",
    "Kabir",
    "Mahbub",
    "Pranto",
    "Nusrat",
    "Mumu",
    "Meraj",
    "Supto",
    "Mujahid",
    "Asik"
  ),
  Age = c(25, 30, 35, 40, 28, 32, 45, 29, 50, 27),
  Salary = c(
    50000,
    55000,
    60000,
    45000,
    70000,
    52000,
    48000,
    68000,
    65000,
    40000
  ),
  Department = c(
    "HR",
    "Finance",
    "IT",
    "HR",
    "IT",
    "Finance",
    "IT",
    "HR",
    "Finance",
    "IT"
  ),
  Performance_Score = c(88, 92, 85, 78, 90, 94, 86, 80, 89, 75)
)

# Rename a column
data %>% rename(Monthly_Salary = Salary)

# Modify an existing column
data %>% mutate(Age = Age + 1)



# Editing Rows ------------------------------------------------------------

## Base R ####

# Update values in specific rows
data[data$Name == "Shihab", "Performance_Score"] <- 80
data

# Add a new row
new_row <- data.frame(
  ID = 11,
  Name = "Nadia",
  Age = 26,
  Salary = 60000,
  Department = "IT",
  Performance_Score = 88
)
data <- rbind(data, new_row)

# Remove a row
data <- data[data$Name != "Nadia", ]


## dplyr ####

data <- data.frame(
  ID = 1:10,
  Name = c(
    "Shihab",
    "Kabir",
    "Mahbub",
    "Pranto",
    "Nusrat",
    "Mumu",
    "Meraj",
    "Supto",
    "Mujahid",
    "Asik"
  ),
  Age = c(25, 30, 35, 40, 28, 32, 45, 29, 50, 27),
  Salary = c(
    50000,
    55000,
    60000,
    45000,
    70000,
    52000,
    48000,
    68000,
    65000,
    40000
  ),
  Department = c(
    "HR",
    "Finance",
    "IT",
    "HR",
    "IT",
    "Finance",
    "IT",
    "HR",
    "Finance",
    "IT"
  ),
  Performance_Score = c(88, 92, 85, 78, 90, 94, 86, 80, 89, 75)
)

# Update values in specific rows
data %>% mutate(Performance_Score = if_else(
  Name == "Shihab",
  80,
  if_else(Department == "HR", 60, Performance_Score)
))

# Add a new row
new_row <- data.frame(
  ID = 11,
  Name = "Nadia",
  Age = 26,
  Salary = 60000,
  Department = factor("IT"),
  Performance_Score = 88
)
data <- bind_rows(data, new_row)

# Remove a row
data <- data %>% filter(Name != "Nadia")

# Arranging ---------------------------------------------------------------

data %>%
  arrange(Performance_Score)

data %>%
  arrange(desc(Performance_Score))

data %>%
  arrange(Department, desc(Performance_Score))

# Reshaping ---------------------------------------------------------------

# A sample data
data_wide <- data.frame(
  country = c("BD", "Ghana", "UK", "Canada"),
  continent = c("Asia", "Africa", "Europe", "North America"),
  GDP_1960 = c(10, 20, 30, 40),
  GDP_1970 = c(13, 23, 33, 45),
  GDP_2010 = c(15, 25, 35, 60),
  stringsAsFactors = FALSE
)
data_wide

# install.packages("tidyr")
library(tidyr)

data_long <- data_wide %>%
  tidyr::pivot_longer(
    cols = starts_with("GDP_"),
    # Selecting columns starting with "GDP_"
    names_to = "Year",
    # The name of the new column that will hold the years
    names_prefix = "GDP_",
    # Remove "GDP_" from the column names
    values_to = "GDP"             # The name of the new column that will hold the GDP values
  )
data_long

data_wide_back <- data_long %>%
  pivot_wider(names_from = "Year", # Columns created based on unique values in the "Year" column
              values_from = "GDP"    # Values for each "Year" will come from the "GDP" column)
              data_wide_back
              
              data_wide_back <- data_long %>%
                filter(Year != "1960") %>%
                pivot_wider(names_from = "Year",
                            # Columns created based on unique values in the "Year" column
                            values_from = "GDP",
                            # Values for each "Year" will come from the "GDP" column
                            names_prefix = "GDP_")
              data_wide_back
              
              
              
              # Joining Datasets --------------------------------------------------------
              
              # Sample dataset 1
              employees <- data.frame(
                ID = c(1, 2, 3, 4, 5),
                Name = c("Shihab", "Kabir", "Mahbub", "Pranto", "Nusrat"),
                Department = c("HR", "IT", "Finance", "IT", "HR")
              )
              employees
              
              # Sample dataset 2
              salaries <- data.frame(ID = c(1, 2, 3, 4, 6),
                                     Salary = c(50000, 60000, 70000, 75000, 40000))
              
              employees
              salaries
              
              left_join(employees, salaries, by = "ID")
              inner_join(employees, salaries, by = "ID")
              right_join(employees, salaries, by = "ID")
              full_join(employees, salaries, by = "ID")
              
              
              
              
              # Add-ins -----------------------------------------------------------------
              
              # install.packages("ViewPipeSteps")
              # install.packages("styler")
              # install.packages("reprex")
              # install.packages("questionr")
              