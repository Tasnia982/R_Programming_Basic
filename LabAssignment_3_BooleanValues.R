#Name: Tasnia Rahman 
#Lab Assignment 3. Boolean Values

#------------------------------------------Part A-------------------------------------------

#a. Store the vector c(4, 6, 5, 3, 4, 7, 2, 8) as an object. Identify: 
#i. Elements equal to 4 
#ii. Elements greater than 5 
#iii. Elements not equal to 4 
vec <- c(4, 6, 5, 3, 4, 7, 2, 8)
# i. Elements equal to 4
vec == 4

# ii. Elements greater than 5
vec > 5

# iii. Elements not equal to 4
vec != 4


#b. Create a new vector by removing the first two elements from (a),
#then fill a 2 × 3 array using  it. Identify: 
#i. Elements less than or equal to 5 
#ii. Repeat after adding 1 to all values in the array 

new_vec <- vec[-c(1, 2)]
new_vec
arr <- array(new_vec[1:6], dim = c(2, 3))
arr
arr <= 5
arr_plus1 <- arr + 1
arr_plus1
arr_plus1 <= 5

#c. Create a 4 × 4 identity matrix using diag(). Confirm the positions of zero entries. 

identity_matrix <- diag(4)
identity_matrix
identity_matrix == 0

#d. Use any() and all() to check whether any or all values in the logical array from (b) are TRUE. 

logical_array <- arr <= 5
logical_array 
any(logical_array)
all(logical_array)

#-----------------------------------------Part B--------------------------------------------------- 

#a. Store the vector foo <- c(3, 7, 2, 6, 5). Find elements greater than 4 OR equal to 2. 
foo <- c(3, 7, 2, 6, 5)
foo > 4 | foo == 2

#b. Store bar <- c(2, 6, 5, 1, 4). Identify elements less than 5 AND not equal to 1. 

bar <- c(2, 6, 5, 1, 4)
bar < 5 & bar != 1

#c. Create baz <- foo + bar. Find: 
#i. Values in baz greater than or equal to 10 
#ii. Values in baz/foo greater than 2 
baz <- foo + bar
baz
baz >= 10
(baz / foo) > 2


#---------------------------------------------Part C------------------------------------------------------ 
#a. Use foo <- c(5, 3, 6, 2, 7, 4) again: 
#i. Extract values ≥ 5, store as bar 
#ii. Show the rest (values < 5) 
foo <- c(5, 3, 6, 2, 7, 4)
bar <- foo[foo >= 5]
bar
foo[foo < 5]
foo


#b. Create a 2 × 2 matrix from bar, row-wise. Replace any 7s 
#with the square of the element at (1,1).

mat <- matrix(bar[1:4], nrow = 2, byrow = TRUE)
mat[mat == 7] <- mat[1, 1]^2












