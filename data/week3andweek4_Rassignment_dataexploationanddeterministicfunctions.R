#Install here package
install.packages("here")
#Requiring the here() to read the data
require(here)
dat_habitat = read.csv(here("data", "hab.sta.csv"))
#To load the data- dat_habitat
dat_habitat
#To create indivual histograms for each sections:
#Histogram of Terrain variables:Elevation
hist(dat_habitat$elev, main="Histogram of Terrain variables: 'Elevation'", xlab="Elevation" , ylab="Frequency")
#Histogram of Terrain variables:Slope
hist(dat_habitat$slope, main="Histogram of Terrain variables: 'Slope'", xlab="Slope" , ylab="Frequency") 
#Histogram of Terrain variables:Aspect
hist(dat_habitat$aspect, main="Histogram of Terrain variables: 'Aspect'", xlab="Aspect" , ylab="Frequency") 
#to save png
png(filename = "Hist3Panel.png")
#To create a figure with three panels arranged in a single column
par(mfrow = c(3, 1))
#Histogram of Terrain variables:Elevation
hist(dat_habitat$elev, main="Histogram of Terrain variables: 'Elevation'", xlab="Elevation" , ylab="Frequency")
#Histogram of Terrain variables:Slope
hist(dat_habitat$slope, main="Histogram of Terrain variables: 'Slope'", xlab="Slope" , ylab="Frequency") 
#Histogram of Terrain variables:Aspect
hist(dat_habitat$aspect, main="Histogram of Terrain variables: 'Aspect'", xlab="Aspect" , ylab="Frequency") 
dev.off()

#CREATING PLOTS:
#Elevation
plot(x= dat_habitat$elev, y=dat_habitat$ba.tot, main= "'Basal Area and Elevation'", xlab= "Elevation", ylab= "Total Basal Area")
#Creating new point and drawing a line through it
##Physically create a center for the data:Elevation
data_center_x = mean(dat_habitat$elev)
data_center_y = mean(dat_habitat$ba.tot)
c(data_center_x, data_center_y)
#Points in the plot
points(x = data_center_x, y = data_center_y, col = "red")
#To draw a line:
curve(line_point_slope(x, x1 = 3.5, y1 = 1.25, slope = 0.09), add = TRUE) 

#Slope
plot(x = dat_habitat$slope, y = dat_habitat$ba.tot, main= "Basal Area and Slope", xlab= "Slope", ylab= "Total Basal Area")
##Physically create a center for the data:Slope
data_center_x = mean(dat_habitat$slope)
data_center_y = mean(dat_habitat$ba.tot)
c(data_center_x, data_center_y)
##Point in the plot
points(x = data_center_x, y = data_center_y, col = "red")
#To Draw a line:
curve(line_point_slope(x, x1 = 3.5, y1 = 1.25, slope = 0.08), add = TRUE)

#Aspect
plot(x= dat_habitat$aspect, y=dat_habitat$ba.tot, main= "'Basal Area and Aspect'", xlab= "Aspect", ylab= "Total Basal Area")
##Physically create a center for the data:Aspect
data_center_x = mean(dat_habitat$aspect)
data_center_y = mean(dat_habitat$ba.tot)
c(data_center_x, data_center_y)
##Point in the plot
points(x = data_center_x, y = data_center_y, col = "red")
#To draw a line:
curve(line_point_slope(x, x1 = 3.5, y1 = 1.25, slope = 0.07), add = TRUE)

#Creating 3 plots in 1 panel
#To save png
png(filename = "Plot3Panel.png")
#Three plots in one panel
par(mfrow = c(3, 1))
plot(x = dat_habitat$elev, y = dat_habitat$ba.tot, main= "Basal Area and Elevation", xlab= "Elevation", ylab= "Total Basal Area")
data_center_x = mean(dat_habitat$elev)
data_center_y = mean(dat_habitat$ba.tot)
c(data_center_x, data_center_y)
points(x = data_center_x, y = data_center_y, col = "red")
curve(line_point_slope(x, x1 = 3.5, y1 = 1.25, slope = 0.09), add = TRUE) 
plot(x = dat_habitat$slope, y = dat_habitat$ba.tot, main= "Basal Area and Slope", xlab= "Slope", ylab= "Total Basal Area")
data_center_x = mean(dat_habitat$slope)
data_center_y = mean(dat_habitat$ba.tot)
c(data_center_x, data_center_y)
points(x = data_center_x, y = data_center_y, col = "red")
curve(line_point_slope(x, x1 = 3.5, y1 = 1.25, slope = 0.08), add = TRUE)
plot(x= dat_habitat$aspect, y=dat_habitat$ba.tot, main= "'Basal Area and Aspect'", xlab= "Aspect", ylab= "Total Basal Area")
data_center_x = mean(dat_habitat$aspect)
data_center_y = mean(dat_habitat$ba.tot)
c(data_center_x, data_center_y)
points(x = data_center_x, y = data_center_y, col = "red")
curve(line_point_slope(x, x1 = 3.5, y1 = 1.25, slope = 0.07), add = TRUE)
dev.off()

# I copied from instruction/week2 inclass R coding practice
# Calculates the value of y for a linear function, given the coordinates
# of a known point (x1, y1) and the slope of the line.
line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}
