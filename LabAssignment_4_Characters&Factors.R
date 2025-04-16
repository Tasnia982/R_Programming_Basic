
#Name: Tasnia Rahman 
#Lab Assignment 4. Characters & Factors

#------------------------------------------Part A-------------------------------------------

#a. Re-create exactly the following output: 
  "Welcome to R 
          Learning is fun 
                 Keep exploring!" 

cat(" \"Welcome to R\n        Learning is fun\n              Keep exploring!\" \n")

#b. Suppose you’ve stored the values val1 <- 8 and val2 <- 2. Write a line of R code that 
#returns the following string: 
  "The result of multiplying 8 by 2 is 16" 
#Make sure your code produces the correct result for any values stored as val1 and val2. 

  val1 <- 8
  val2 <- 2
  paste("The result of multiplying", val1, "by", val2, "is", val1 * val2)
  
#c. On a local machine, suppose the working directory path is specified in R as: 
  "/Users/username/Documents/RLearning/" 
#Write a line of code that replaces the username in this string with your initial and surname. 
  
  path <- "/Users/username/Documents/RLearning/"
  new_path <- sub("username", "T.Rahman(982)", path)
  print(new_path)
  
#If needed  to replace all occurrences of a pattern in a string, use gsub() instead:
   # gsub("username", "T.Rahman(982)", path)
  

#d. Store the string "3 items for $9.99". Then do the following: 
#i. Use a check for equality to confirm that the substring from character 3 to 10 is "items fo". 
#ii. Make it a better deal by changing the price to $7.99 inside the string. 
 
   deal <- "3 items for $9.99"
  substr(deal, 3, 10) == "items fo"
  better_deal <- sub("\\$9.99", "$7.99", deal)
  print(better_deal)
  
#----------------------------------------------------Part B-------------------------------------------  
#You surveyed 14 people about their preferred pet and gender. 
#● There were 8 males and 6 females. The individuals numbered 2, 5, 7, 9, 12, 13 were females. 
#● Individuals chose their preferred pet from "Dog", "Cat", "Bird", and "Other". 
#Here’s the data (by participant number): 
#a. Use vector subsetting and overwriting to create two character vectors: 
#● gender → contains "M" and "F" in correct order 
#● pet → contains "Dog", "Cat", "Bird", "Other" in correct order 
  
  # Initialize gender vector with 14 entries, all "M"
  gender <- rep("M", 14)
  gender
  
  # Overwrite positions 2, 5, 7, 9, 12, 13 as "F"
  gender[c(2, 5, 7, 9, 12, 13)] <- "F"
  gender 
  
  # Create pet vector based on participant order
  pet <- c("Dog", "Cat","Dog", "Bird", "Dog", "Other", "Cat", "Dog", "Dog", 
           "Cat", "Dog", "Bird", "Cat", "Dog")
  pet 
  
  
#b. Create two factor vectors based on gender and pet. 
#Does it make sense to use ordered = TRUE for either? 
#How has R arranged the levels? 
  
  gender_factor <- factor(gender)
  gender_factor
  pet_factor <- factor(pet)
  pet_factor
  print("No, it does NOT make sense to use ordered = TRUE for either.
        Because 'M 'and 'F' have no logical ranking & 
        Dog, Cat, Bird, Other are just categories, not a ranked scale . ")
  
  levels(gender_factor)  
  levels(pet_factor)     
  
  
#c. Use factor subsetting to do the following: 
#i. Return the factor vector of preferred pets for only male participants. 
#ii. Return the factor vector of genders for those who chose "Cat". 
  
  pet_factor[gender_factor == "M"]
  gender_factor[pet_factor == "Cat"]
  
  
  
#d. Later, 4 more people joined the survey: 
#new_pets <- c("Dog", "Other", "Cat", "Bird") 
#new_genders <- c("F", "M", "M", "F") 
#Combine these with your original factor vectors from (b). 
  
  new_pets <- c("Dog", "Other", "Cat", "Bird")
  new_pets
  new_genders <- c("F", "M", "M", "F")
  new_genders

  combined_pet <- factor(c(as.character(pet_factor), new_pets))
  combined_pet
  combined_gender <- factor(c(as.character(gender_factor), new_genders))
  combined_gender
  
#e. Suppose each participant gave a confidence rating (percentage) on how sure they are that 
#their pet is the best. The 18 values collected are: 
#85, 60, 70, 95, 40, 55, 20, 100, 30, 80, 50, 45, 75, 65, 35, 90, 25, 60 
#Create a factor conf_levels with levels based on: 
#● "Low" for percentages [0,40] 
#● "Moderate" for (40,70] 
#● "High" for (70,100] 
 
  conf_scores <- c(85, 60, 70, 95, 40, 55, 20, 100, 30, 80, 50, 45, 75, 65, 35, 90, 25, 60)

  conf_labels <- cut(conf_scores,
                     breaks = c(0, 40, 70, 100),
                     labels = c("Low", "Moderate", "High"),
                     include.lowest = TRUE)

  conf_levels <- factor(conf_labels, levels = c("Low", "Moderate", "High"))
  conf_labels
  
  
  
#f. From conf_levels, extract the levels corresponding to those who chose "Dog" and "Cat". 
#What do you notice?
  
  combined_pets <- c(pet, new_pets)
  combined_pets
  conf_for_dog_cat <- conf_levels[combined_pets %in% c("Dog", "Cat")]
  print(conf_for_dog_cat)
  
  
  
  
  