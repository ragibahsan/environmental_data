#Install the palmerpenguins package and dataset
install.packages("palmerpenguins")

#Install the here package 
install.packages("here")

#Telling R that you want to use the using the require() or library() function. I prefer require():
require(palmerpenguins)
require(here)

# Prepare the dataset
penguins = data.frame(penguins)

#Data exploration: Numerical Exploration- Mean
  #To calculate the mean bill length of all the penguins:

mean(penguins$body_mass_g)
penguins
head(penguins)

#Boxplots
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

#To compare these two plots
par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

#Coplots
coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)

#Saving plots to a file


