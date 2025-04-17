
#Name: Tasnia Rahman 
#Lab Assignment 6. Graphics 

#----------------------------------------------Part A------------------------------------------------------ 
"With the following data, create a plot of speed on the x-axis and reaction time on the y-axis. 
Use different point characters or colors to distinguish between experienced and inexperienced 
drivers and provide a matching legend. Label the axes and give the plot a title. "

speed <- c(50, 80, 60, 90, 70, 100, 55, 85, 65, 95)
reaction_time <- c(450, 510, 430, 550, 480, 600, 420, 530, 460, 590)
experience <- c("experienced", "inexperienced", "experienced", "inexperienced",
                "experienced", "inexperienced", "experienced", "inexperienced",
                "experienced", "inexperienced")
experience

colors <- ifelse(experience == "experienced", "blue", "red")
colors
pch_vals <- ifelse(experience == "experienced", 16, 17) 
pch_vals

plot(speed, reaction_time,
     col = colors,
     pch = pch_vals,
     xlab = "Speed (km/h)",
     ylab = "Reaction Time (ms)",
     main = "Reaction Time vs Speed by Driving Experience")
plot

legend("topleft",
       legend = c("Experienced", "Inexperienced"),
       col = c("blue", "red"),
       pch = c(16, 17))
legend


#----------------------------------------------Part B------------------------------------------------------ 
#Repeat the Part A task using ggplot2. 

library(ggplot2)
data <- data.frame(
  speed = c(50, 80, 60, 90, 70, 100, 55, 85, 65, 95),
  reaction_time = c(450, 510, 430, 550, 480, 600, 420, 530, 460, 590),
  experience = factor(c("experienced", "inexperienced", "experienced", "inexperienced",
                        "experienced", "inexperienced", "experienced", "inexperienced",
                        "experienced", "inexperienced"))
)

ggplot(data, aes(x = speed, y = reaction_time, color = experience, shape = experience)) +
  geom_point(size = 3) +
  labs(title = "Reaction Time vs Speed by Driving Experience",
       x = "Speed (km/h)",
       y = "Reaction Time (ms)") +
  scale_color_manual(values = c("experienced" = "blue", "inexperienced" = "red")) +
  theme_minimal()

