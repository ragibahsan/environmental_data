#import a dataset
data(iris)
#previewing a data set 
head(iris)
#To get the entries in the “Sepal.Width” column
iris$Sepal.Width
#to calculate the mean of vectors
mean(iris$Sepal.Length)
#to calculate the standard deviation of vectors
sd(iris$Sepal.Width)
#To build a scatterplot of iris sepal width and length
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
#Where is the center of the data?
data_center_x = mean(iris$Sepal.Width)
data_center_y = mean(iris$Sepal.Length)
c(data_center_x, data_center_y)
#Add a point to an existing plot
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
points(x = data_center_x, y = data_center_y, col = "red")
#To draw a line
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
#Add a curve to an existing plot
#plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
#points(x = data_center_x, y = data_center_y, col = "red")
#curve(
 # line_point_slope(
    #x, 
    #data_center_x, 
    #data_center_y,
   # -0.1), 
  #add = TRUE)
#plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
#points(x = data_center_x, y = data_center_y, col = "red")
#curve(
 # line_point_slope(
    #x, 
    #data_center_x, 
    #data_center_y,
    #-0.2), 
  #add = TRUE)
#title(main ="Ragib")
plot(x = iris$Sepal.Width, y = iris$Sepal.Length, main="Ragib's Scatter Plot", xlab= "Sepal Width",ylab= "Sepal Length") 

points(x = data_center_x, y = data_center_y, col = "red") 

curve( 
  
  line_point_slope( 
    
    x,  
    
    data_center_x,  
    
    data_center_y, 
    
    0.20),  
  
  add = TRUE)
