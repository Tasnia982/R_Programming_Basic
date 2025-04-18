#Name : Tasnia Rahman
#ID : 221-35-982
#Section : A2 
#Batch : 37 
#-----------------------------------------------Ans Q-1--------------------------------------------
getwd()

"
----------------------------UNDERSTANDING AND ANALYSIS    [10 MARKS] ------------------------------------
I. Download the dataset “Students Performance in Exams” and load it into R using read.csv(). 
II. Explore the dataset using basic R data structures: 
  ● Convert the first 5 numeric columns into a matrix, calculate row-wise and column-wise means. 
● Extract 3 categorical columns into a data frame and describe their structure using str() and 
summary(). 
● Create a list containing the matrix, categorical data frame, and a character vector of student IDs 
(you can generate fake IDs like S1, S2, ...).
"

data <- read.csv("StudentsPerformance.csv")

head(data)

# Q: Convert the first 5 numeric columns into a matrix and calculate row-wise and column-wise means.

names(data)

numeric_matrix <- as.matrix(data[, c("math.score", "reading.score", "writing.score")])
numeric_matrix

row_means <- rowMeans(numeric_matrix)
row_means
head(row_means)

col_means <- colMeans(numeric_matrix)
col_means

# Q: Extract 3 categorical columns into a data frame and describe their structure using str() and summary().

categorical_df <- data[, c("gender", "race.ethnicity", "test.preparation.course")]
categorical_df
str(categorical_df)
summary(categorical_df)

# Q: Create a list containing the matrix, categorical data frame, and a character vector of student IDs (e.g., S1, S2, ...).
student_ids <- paste0("S", 1:nrow(data))
student_ids
student_list <- list(
  scores_matrix = numeric_matrix,
  categorical_data = categorical_df,
  student_ids = student_ids
)
student_list
str(student_list)

"
--------------------------------------------------IMPLEMENTATION    [15 MARKS] --------------------------------------
I. Perform the following manipulations on the loaded dataset and your derived structures: 
a. From the matrix, find the student(s) with: 
● Highest total score 
● Lowest math score 
b. In your data frame of categorical variables: 
● Count how many students completed the test preparation course. 
● Count gender-wise participation using table(). 
c. Create a new data frame student_summary with the following columns: 
● StudentID 
● AverageScore (mean of math, reading, and writing) 
● Grade (A if Avg ≥ 85, B if 70–84, C if 50–69, D if < 50)
"

# Q: From the matrix, find the student(s) with the highest total score.
total_scores <- rowSums(numeric_matrix)
max_score_index <- which.max(total_scores)
highest_scorer <- student_ids[max_score_index]
highest_scorer

# Q: Find the student(s) with the lowest math score.
min_math_index <- which.min(numeric_matrix[, "math.score"])
lowest_math_scorer <- student_ids[min_math_index]
lowest_math_scorer

# Q: Count how many students completed the test preparation course.
table(categorical_df$test.preparation.course)

# Q: Count gender-wise participation using table().
table(categorical_df$gender)

# Q: Create a new data frame student_summary with StudentID, AverageScore, and Grade.

average_scores <- rowMeans(numeric_matrix)
average_scores
grades <- ifelse(average_scores >= 85, "A",
                 ifelse(average_scores >= 70, "B",
                        ifelse(average_scores >= 50, "C", "D")))
grades
student_summary <- data.frame(
  StudentID = student_ids,
  AverageScore = average_scores,
  Grade = grades
)

head(student_summary)

"
-----------------------------------------------------------ACCURACY   [10 MARKS] --------------------------------
I. Ensure all calculations use vectorized R functions (apply, colMeans, rowSums, ifelse, etc.). 
II. Use filtering and subsetting accurately to extract insights (e.g., gender-wise score distributions, course 
impact, etc.). 
"

aggregate(cbind(math.score, reading.score, writing.score) ~ gender, data = data, mean)

aggregate(cbind(math.score, reading.score, writing.score) ~ test.preparation.course, data = data, mean)

high_female <- data[which(data$gender == "female" & average_scores > 80), ]
head(high_female)


"
-----------------------------------------CODE EFFICIENCY  [5 MARKS] ---------------------------------------------       
I. Use rMarkdown to explain what each block of code is doing. 
II. Add comments and logical section breaks for clarity and reusability.

"
#Use all necessary comments and logical section breaks for clarity and reusability.









