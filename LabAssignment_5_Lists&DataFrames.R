
#Name: Tasnia Rahman 
#Lab Assignment 5. Lists and Data frames

#------------------------------------------Part A-------------------------------------------

#a. Create a list with the following four components: 
#● A sequence of 10 evenly spaced numbers between -5 and 5 
#● A 2 × 3 matrix created from the logical vector
#c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE), filled by columns 
#● A character vector with the values "alpha" and "beta" 
#● A factor vector with the values c("YES", "NO", "YES", "NO", "MAYBE") 
#Then perform the following: 

seq_nums <- seq(-5, 5, length.out = 10)
log_matrix <- matrix(c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE), nrow = 2, byrow = FALSE)
char_vec <- c("alpha", "beta")
fact_vec <- factor(c("YES", "NO", "YES", "NO", "MAYBE"))
my_list <- list(
  sequence = seq_nums,
  matrix = log_matrix,
  characters = char_vec,
  factors = fact_vec
)

#i. Extract the first row of columns 2 and 3, in that order, from the logical matrix. 

first_row_cols_2_3 <- my_list$matrix[1, c(2, 3)]
print(first_row_cols_2_3)


#ii. Use string substitution to replace "alpha" with "Alpha" and "beta" with "Beta",
#then display the phrase: 
  "Status: Alpha & Beta Activated!" 

  capital_chars <- gsub("alpha", "Alpha", my_list$characters)
  capital_chars <- gsub("beta", "Beta", capital_chars)
  
  message <- paste("Status:", paste(capital_chars, collapse = " & "), "Activated!")
  print(message)
  

#iii. Get all numbers from the sequence that are less than 0 
  
less_than_zero <- my_list$sequence[my_list$sequence < 0]
print(less_than_zero)


#iv. Use which() to find the indices in the factor vector where the value is 'NO' 

no_indices <- which(my_list$factors == "NO")
print(no_indices)


#---------------------------------------------Part B----------------------------------------------

"a. Create a new list with the following components: 
● The factor vector from Part A, named 'status'
● A numeric vector c(2.5, 3.1, 1.9, 4.6, 3.0) named 'data'
● A nested list named 'archive' containing the first two components of the list from 
Part-A 
Then do the following: "

status <- factor(c("YES", "NO", "YES", "NO", "MAYBE"))
data <- c(2.5, 3.1, 1.9, 4.6, 3.0)

sequence <- seq(-5, 5, length.out = 10)
log_matrix <- matrix(c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE), nrow = 2, byrow = FALSE)

archive <- list(
  sequence = sequence,
  matrix = log_matrix
)

new_list <- list(
  status = status,
  data = data,
  archive = archive
)

#i. Extract elements from "status" where the corresponding "data" values are greater than 2 

status_gt_2 <- new_list$status[new_list$data > 2]
print(status_gt_2)

#ii. Add a new component "checks": a logical vector created by repeating the first column of the 
#matrix in "archive" twice iii. Use the negation of "checks" to extract values from "data" 
#where the condition is FALSE iv. Overwrite the character vector in "archive" (if present) with a 
#single string: "Data Archived" 

first_col <- new_list$archive$matrix[, 1] 
checks <- rep(first_col, times = 2)        
new_list$checks <- checks

print(new_list$checks)

data_filtered <- new_list$data[!new_list$checks]
print(data_filtered)

new_list$archive$characters <- "Data Archived"

print(new_list$archive$characters)


#-----------------------------------------------------Part C----------------------------------- 
"a. Create and store the following data frame as gamedata in your R workspace: 
The variables should be character, type, and level, where: 
● character is a character vector with 
the names of characters 
● type is a factor with levels Wizard, 
Warrior, and Rogue 
● level is a factor with levels Low, Med, 
and High "

character <- c("Aelric", "Brynn", "Cedric", "Elira", "Tamsin", "Varek")

type <- factor(c("Wizard", "Rogue", "Warrior", "Wizard", "Rogue", "Warrior"),
               levels = c("Wizard", "Warrior", "Rogue"))

level <- factor(c("High", "Med", "Low", "High", "Med", "Med"),
                levels = c("Low", "Med", "High"))

gamedata <- data.frame(character, type, level, stringsAsFactors = FALSE)

print(gamedata)


"b. Append a new numeric column to gamedata called XP (experience points) with the following 
values: Aelric and Brynn: 3200, Cedric: 1200, Elira: 4800, Tamsin: 2500, Varek: 3900. "

gamedata$XP <- c(3200, 3200, 1200, 4800, 2500, 3900)

print(gamedata)

"c. Reorder the columns in gamedata so that the column order becomes: 
1. character 
2. XP 
3. type 
4. level "

gamedata <- gamedata[, c("character", "XP", "type", "level")]

print(gamedata)


#d. Write a single line of R code that returns the character names and XP of all records where 
#the type is “Rogue” and the level is Med or High. 

rogue_filtered <- gamedata[gamedata$type == "Rogue" & gamedata$level %in% c("Med", "High"), c("character", "XP")]

print(rogue_filtered)


#e. Use string functions in R (e.g., substr, startsWith, or similar) to extract all records from 
#gamedata where the character name starts with the letter 'C' or 'E'.

ce_names <- gamedata[startsWith(gamedata$character, "C") | startsWith(gamedata$character, "E"), ]

print(ce_names)








