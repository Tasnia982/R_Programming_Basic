#Name: Tasnia Rahman 
#Lab Assignment 8. Elementary Statistics 

#----------------------------------------------Part A------------------------------------------------------ 
"
a. Identify the type of variable for each of the following scenarios: 
  (Choose from: numeric-continuous, numeric-discrete, categorical-nominal, categorical-ordinal) 
i. Number of books on a student’s desk 
ii. Customer rating on a mobile app (Excellent, Good, Fair, Poor) 
iii. Temperature in Celsius during a summer day 
iv. Sound alert type (beep, buzz, chime) 
v. Ranking of your top 3 favorite fruits 
vi. Distance run by a cat in a minute 
b. Identify whether each is a population parameter or a sample statistic: 
  Also, for sample statistics, indicate the corresponding population parameter. 
i. Average height of 10 random sunflowers in a garden 
ii. Proportion of all cats in a city that are vaccinated 
iii. Average daily sales from one week in a local shop 
iv. Percentage of students in a class who own a laptop 
v. Mean score of all students in a country on a national test 
"

types <- list(
  "i" = "numeric-discrete",        # Number of books
  "ii" = "categorical-ordinal",    # Customer rating
  "iii" = "numeric-continuous",    # Temperature
  "iv" = "categorical-nominal",    # Sound alert type
  "v" = "categorical-ordinal",     # Ranking of fruits
  "vi" = "numeric-continuous"      # Distance run by a cat
)
print(types)

analysis <- list(
  "i" = "Sample statistic (Parameter: Average height of all sunflowers)",
  "ii" = "Population parameter",
  "iii" = "Sample statistic (Parameter: Average daily sales of the shop)",
  "iv" = "Sample statistic (Parameter: Percentage of all students owning laptops)",
  "v" = "Population parameter"
)
print(analysis)


#--------------------------------------------------------Part B--------------------------------------------------- 
"
a. Use the built-in volcano dataset: 
  This dataset contains topographic information on a volcano. 
i. Calculate the number of cells (locations) where the height is more than 150. 
ii. Create a histogram of the height values. 
b. Use the built-in trees dataset: 
  This dataset contains data about the height and volume of black cherry trees. 
i. Calculate the mean and median volume of the trees. 
ii. Determine the number of trees that are taller than 75 feet. 
"

data(volcano)

sum(volcano > 150)

hist(volcano, main = "Histogram of Volcano Heights", xlab = "Height", col = "lightblue")

data(trees)

mean_volume <- mean(trees$Volume)
median_volume <- median(trees$Volume)
mean_volume
median_volume
sum(trees$Height > 75)


#------------------------------------------------------------Part C----------------------------------------------------- 
"a. Using PlantGrowth dataset (comes with R): 
  i. Use a for loop to calculate the average plant weight for each group. 
ii. Confirm your result with the tapply() function. 
b. Use a loop to find the percentage of plants in each group that weigh more than 5 grams. 
Round to nearest whole number. 
Also replicate the same output using tapply() and an anonymous function. "

data(PlantGrowth)
# i. Avg
groups <- unique(PlantGrowth$group)
avg_weights <- numeric(length(groups))

for (i in 1:length(groups)) {
  avg_weights[i] <- mean(PlantGrowth$weight[PlantGrowth$group == groups[i]])
  cat(groups[i], ":", avg_weights[i], "\n")
}

# ii. Using tapply()
tapply(PlantGrowth$weight, PlantGrowth$group, mean)

# b. 
percentages <- numeric(length(groups))
for (i in 1:length(groups)) {
  group_data <- PlantGrowth$weight[PlantGrowth$group == groups[i]]
  percentages[i] <- round(sum(group_data > 5) / length(group_data) * 100)
  cat(groups[i], ":", percentages[i], "%\n")
}

tapply(PlantGrowth$weight, PlantGrowth$group, function(x) round(mean(x > 5) * 100))


#----------------------------------------------------------------Part D--------------------------------------------- 

"a. Use the mtcars dataset: 
  i. Create a new factor called efficiency based on the variable mpg (miles per gallon), divided 
into 3 categories: 
  ● Low (mpg < 20) 
● Medium (20 ≤ mpg < 30) 
● High (mpg ≥ 30) 
ii. Use table() to count how many cars fall into each category. 
iii. Calculate the average horsepower (hp) for each efficiency category using tapply(). 
iv. Plot a basic barplot of the average horsepower per category using base R. 
b. Turn to trees again: 
  i. Calculate the standard deviation and IQR of tree heights. 
ii. Suppose the smallest height was a data error. Remove it and recalculate the standard 
deviation and IQR. 
iii. Briefly comment on the change.
" 
data(mtcars)

mtcars$efficiency <- cut(mtcars$mpg,
                         breaks = c(-Inf, 20, 30, Inf),
                         labels = c("Low", "Medium", "High"))
mtcars$efficiency

# ii.
table(mtcars$efficiency)

# iii. 
tapply(mtcars$hp, mtcars$efficiency, mean)

# iv. Barplot
barplot(tapply(mtcars$hp, mtcars$efficiency, mean),
        main = "Average Horsepower by Efficiency Category",
        ylab = "Average HP", col = "orange")

# b. Tree height stats
heights <- trees$Height

# i. Standard deviation and IQR
sd(heights)
IQR(heights)

# ii. 
heights_cleaned <- heights[heights != min(heights)]
sd(heights_cleaned)
IQR(heights_cleaned)

# iii. Comment:
# Removing the smallest height increases the standard deviation slightly and may reduce IQR.
# It shows how outliers or incorrect values can affect summary statistics.

