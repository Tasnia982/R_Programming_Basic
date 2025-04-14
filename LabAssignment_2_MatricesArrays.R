
#Name: Tasnia Rahman 
#Lab Assignment 2. Matrices  Arrays

#------------------------------------------Part A-------------------------------------------

#a. Construct and store a 4 × 2 matrix, filled row-wise with the values: 
# 5.5, 2.3, 7.7, 6.1, 4.4, 1.0, 0.5, and 3.6, in that order. 

values <- c(5.5, 2.3, 7.7, 6.1, 4.4, 1.0, 0.5, 3.6)
mat_a <- matrix(values, nrow = 4, ncol = 2, byrow = TRUE)
mat_a


#b. Confirm that the dimensions of the matrix from (a) become 3 × 2 if you remove any one row. 

mat_b <- mat_a[-1, ] 
dim(mat_b)
mat_b


#c. Overwrite the first column of the matrix from (a) with that same column 
#sorted from smallest to largest. 

mat_c <- mat_a
mat_c[,1] <- sort(mat_c[,1])
mat_c


#d. What does R return if you delete the third row and the second column from (c)?
# Use matrix() to ensure the result is a single-column matrix, not a vector. 

mat_d <- matrix(mat_c[-3, -2], ncol = 1)
mat_d

#e. Store the top four elements of (c) as a new 2 × 2 matrix. 

top4 <- matrix(mat_c[1:4], nrow = 2, ncol = 2)
top4


#f. Overwrite, in this order, the elements of (c) at positions (2,1), (4,1), (2,2), and (4,2)
#with −1 times the two values from the diagonal of the matrix in (e). 

diagonal_values <- diag(top4) 
mat_c[2,1] <- -1 * diagonal_values[1]
mat_c[4,1] <- -1 * diagonal_values[2]
mat_c[2,2] <- -1 * diagonal_values[1]
mat_c[4,2] <- -1 * diagonal_values[2]
mat_c

#---------------------------------------Part B----------------------------------------------- 
#a. Create and store a three-dimensional array with 5 layers of a 3 × 2 matrix,
#filled with a decreasing sequence from 10.0 to 1.0, of the required length. 

values <- seq(10.0, 1.0, length.out = 30)  
arr_a <- array(values, dim = c(3, 2, 5))
arr_a


#b. Extract and store as a new object the third- and first-row elements (in that order) of the first 
#column only from all layers of (a). 

arr_b <- arr_a[c(3,1), 1, ]  
arr_b

#c. Use a threefold repetition of the first row of the matrix formed in (b) to fill 
#a new array of dimensions 2 × 2 × 2 × 2. 

first_row <- arr_b[1, ]
first_row
rep_vals <- rep(first_row, length.out = 16)
rep_vals
arr_c <- array(rep_vals, dim = c(2, 2, 2, 2))
arr_c

#d. Create a new array by removing the first layer of the array from (a). 

arr_d <- arr_a[, , -1] 
dim(arr_d)  


#e. Overwrite the first and third row elements of the first column in layers 2 and 4
# of the array in (d) with the value −88.

arr_d[c(1,3), 1, c(2,4)] <- -88
arr_d
















