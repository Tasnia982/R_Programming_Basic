#Name: Tasnia Rahman 
#Lab Assignment 7. Input Outputs 

#----------------------------------------------Part A------------------------------------------------------ 

"R provides several built-in datasets. One such dataset is trees, which contains measurements 
of the girth, height, and volume of black cherry trees. Complete the following: 
  a. "
#1. Access the dataset trees and view its documentation using the help system. 

data(trees)
?trees

#2. From trees, select only the rows where the Volume is greater than or equal to 25. 

large_trees <- subset(trees, Volume >= 25)
large_trees
#3. Save the selected data into a file called large_trees.txt using write.table(): 
#○ Use | as the separator. 
#○ Do not include row names. 

write.table(large_trees, file = "large_trees.txt", sep = "|", row.names = FALSE)

#b. 1. Read the large_trees.txt file back into your R environment and assign it to a 
#variable called bigtrees.

bigtrees <- read.table("large_trees.txt", sep = "|", header = TRUE)
bigtrees


#----------------------------------------------Part B------------------------------------------------------ 

#The built-in cars dataset shows the speed of cars and the distances taken to stop. Do the following: 
"1. Create a scatter plot of speed on the x-axis and dist on the y-axis.
2. For speeds above 15, use red triangles, and for speeds 15 or less, use green circles. 
3. Add a legend explaining the symbol meanings. 
4. Export the plot to a PNG file named "car_speeds.png" with size 400x400 pixels."

data(cars)

png("car_speeds.png", width = 400, height = 400)
symbol_color <- ifelse(cars$speed > 15, "red", "green")
symbol_shape <- ifelse(cars$speed > 15, 17, 16) # 17 = triangle, 16 = circle

plot(cars$speed, cars$dist,
     col = symbol_color,
     pch = symbol_shape,
     xlab = "Speed",
     ylab = "Stopping Distance",
     main = "Car Speed vs Stopping Distance")
plot
legend("topleft",
       legend = c("Speed > 15 (Red Triangles)", "Speed ≤ 15 (Green Circles)"),
       col = c("red", "green"),
       pch = c(17, 16))
legend
dev.off()

#----------------------------------------------Part C------------------------------------------------------ 
#List Operations 
#1. Create a list named mydata_list that contains the following three objects: 
"○ The full trees dataset 
○ The filtered bigtrees dataset 
○ The cars dataset "

mydata_list <- list(
  full_trees = trees,
  big_trees = bigtrees,
  car_data = cars
)
mydata_list
#2. Save this list to disk using save() and name the file tree_car_data.RData. 

save(mydata_list, file = "tree_car_data.RData")

#3. Remove all objects from your environment and then reload the saved list. Confirm that 
#the list still contains all three datasets.
rm(list = ls())
load("tree_car_data.RData")
print(names(mydata_list))








