#Name: Tasnia Rahman 
#Lab Assignment 1. Numerics, Arithmetic, Assignment,  Vectors

#----------------------------------Part A--------------------------------------

# (a) Create a sequence from 2 to -4 with step -0.5
seq_a <- seq(from = 2, to = -4, by = -0.5)
print(seq_a)

# (b)Overwrite the object from (a) using the same sequence with the order reversed.
#Reverse the sequence and overwrite seq_a
seq_a <- rev(seq_a)
print(seq_a)

# (c) Repeat the vector c(1, -2, 3) two times, with each element repeated 4 times, and store
#the result. Display the result sorted from largest to smallest.

vec_c <- rep(c(1, -2, 3), each = 4, times = 2)

sorted_c <- sort(vec_c, decreasing = TRUE)
print(sorted_c)

#(d) Create and store a vector that contains, in any order, the following:
#i. A sequence of integers from 1 to 5 (inclusive)
#ii. A threefold repetition of the value 2.5
#iii. The number −1
#iv. A sequence of six values starting at 20 and ending at the number that is the length of the
#vector created in (c)


#ANS:(d)
seq1 <- 1:5
seq1

rep_2.5 <- rep(2.5, times = 3)
rep_2.5

num_minus1 <- -1
num_minus1

seq_length <- seq(from = 20,
                  to = length(vec_c),
                  length.out = 6)
seq_length

vec_d <- c(seq1, rep_2.5, num_minus1, seq_length)
print(vec_d)


# (e)  Confirm that the length of the vector created in (d) is 15.
length_vec_d <- length(vec_d)
print(length_vec_d)
length_vec_d == 15


#-----------------------------------Part B----------------------------------
# (a)Create and store a vector that contains the following, in this order:
#i. A sequence of length 4 from 1 to 2 (inclusive)
#ii. A twofold repetition of the vector c(1, -3)
#iii. The value 5/10 + 1

#ANS(a):
#Create components:
seq_part <- seq(from = 1,
                to = 2,
                length.out = 4)
seq_part
repeat_part <- rep(c(1, -3), times = 2)
repeat_part
value_part <- 5 / 10 + 1
value_part

vec_a <- c(seq_part, repeat_part, value_part)
print(vec_a)

#(b)Extract the first and last elements of your vector from (a), and store them as a new object
first_last <- c(vec_a[1], vec_a[length(vec_a)])
print(first_last)

#(c)Store as a third object the values returned by omitting the first
#and last values of your vector from (a).
#ANS(C)
middle_values <- vec_a[2:(length(vec_a) - 1)]
print(middle_values)

# (d)Use only (b) and (c) to rebuild (a).
#ANS(D)

reconstructed_a <- c(first_last[1], middle_values, first_last[2])
print(reconstructed_a)

#(e)Overwrite (a) with the same values sorted in increasing order.
#ANS(E)
vec_a <- sort(vec_a)
print(vec_a)

# (f) Reverse the order of (e) using the colon operator as an index, and confirm this gives the same
#result as using sort(..., decreasing = TRUE).
#ANS(f)

reversed_colon <- vec_a[length(vec_a):1]
reversed_sort <- sort(vec_a, decreasing = TRUE)

print(reversed_colon)
print(reversed_sort)

identical(reversed_colon, reversed_sort)

# (g)From (c), create a new vector that repeats the second element 2 times, the fourth element 3
#times, and the last element once.
selected_repeats <- c(rep(middle_values[2], 2), rep(middle_values[4], 3), middle_values[length(middle_values)])
print(selected_repeats)

# (h)Make a copy of (e). In that copy, overwrite the first, the third to fourth, and the last element
#with the values 10, 9, 8, 7.

#ANS(H) :
vec_h <- vec_a

vec_h[1] <- 10
vec_h[3:4] <- c(9, 8)
vec_h[length(vec_h)] <- 7

print(vec_h)

#-------------------------------------------Part C--------------------------------

#a)Convert the vector c(1, 0.5, 1, 1, 0.5, 1) to a vector of only 1s, using a shorter
#vector.
#ANS(A)

original_vec <- c(1, 0.5, 1, 1, 0.5, 1)
original_vec

short_vec <- c(1, 1, 1)
short_vec

converted_vec <- rep(short_vec, length.out = length(original_vec))
print(converted_vec)

#b) Convert the temperatures 32, 68, 100 from degrees Fahrenheit to degrees Celsius using the
#formula:   C = 5/9(F − 32)

#ANS(B)

fahrenheit <- c(32, 68, 100)
fahrenheit


celsius <- (5 / 9) * (fahrenheit - 32)
celsius


#c)Use c(2, 4, 6) and c(1, 2) with rep and * to make c(2, 4, 6, 4, 8, 12).

#ANS(C)
vec1 <- c(2, 4, 6)
vec2 <- c(1, 2)
result_c <- vec1 * rep(vec2, times = 3)
print(result_c)

result_c <- c(vec1, vec1) * rep(vec2, times = 3)
print(result_c)

result_c <- c(2, 4, 6) * c(1, 2)
result_c <- c(result_c, c(2, 4, 6) * c(2, 1))
print(result_c)

result_c <- c(2, 4, 6) * rep(c(1, 2), each = 3)
print(result_c)

#d)Change the middle two elements of the result in (c) to -1 and -2, using recycled values.

#ANS(D)
result_c[3:4] <- c(-1, -2)
print(result_c)
