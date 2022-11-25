Worksheet #6

library(ggplot2)
library(dplyr)
data1<-data(mpg)
mpg

mpg_df<-as.data.frame(data(mpg))

#1. How many columns are in mpg dataset? How about the number of rows? Show the
#codes and its result.

#Number of columns in mpg data set
ncol(mpg)

#Number of rows in mpg data set
nrow(mpg)


#2. Which manufacturer has the most models in this data set? Which model has the most
#variations? 
 
manufac<-mpg%>%
group_by(manufacturer)%>%count()
manufac

colnames(manufac)<-c("Manufacturer", "Counts")

#Answer:
  #Dodge is the manufacturer that has the most models, 
  #for it has 37 models.
  
  #a. Group the manufacturers and find the unique models. Copy the codes and result.
  
  unique_data <- mpg %>% group_by(manufacturer, model) %>%
  distinct() %>% count()
  colnames(unique_data) <- c("Manufacturer", "Model","Counts")
  unique_data
  

  #b. Graph the result by using plot() and ggplot(). Write the codes and its result.

  plot(unique_data)

  ggplot(unique_data, aes(Model, Manufacturer)) + geom_point()
  
  
#3. Same dataset will be used. You are going to show the relationship of the model and
#the manufacturer.

  #a. What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
  
  ggplot(mpg, aes(model, manufacturer)) + geom_point()
  
  #Answer: It connects the models to their appropriate manufacturers
  #through plotting it.
  
  
  #b. For you, is it useful? If not, how could you modify the data to make it more
  #informative?
  
  #Answer: It is useful because it arranges and organizes the data, by that, it is easy to 
  #distinguish the relationship between manafacturers and models.

#4.Using the pipe (%>%), group the model and get the number of cars per model. Show
#codes and its result.  

  group_model <- group_data %>% group_by(Model) %>% count()
  group_model
  
  colnames(group_model) <- c("Model","Counts")
    
  #a. Plot using the geom_bar() + coord_flip() just like what is shown below. Show
  #codes and its result
  
  qplot(model,data = mpg,main = "Number of Cars per Model", xlab = "Model",
  ylab = "Number of Cars", geom = "bar", fill = manufacturer) + coord_flip()
  
  #b. Use only the top 20 observations. Show code and results.
  top_obs <- mpg %>% 
    group_by(model) %>% 
    tally(sort = TRUE)
  top_obs
  
  ggplot(top_obs, aes(x = model, y = n, fill = "rainbow")) +
    geom_bar(stat = "identity") + coord_flip()
  
#5. Plot the relationship between cyl - number of cylinders and displ - engine 
#displacement using geom_point with aesthetic colour = engine displacement. Title should be
#“Relationship between No. of Cylinders and Engine Displacement”.
  
  #a. Show the codes and its result.
  ggplot(data = mpg) + 
  geom_point(mapping = aes(y = cyl ,
    x = displ ,
    colour = 'engine displacement', 
    title = 'Relationship between No. of 
    Cylinders and Engine Displacement'))
  
  #b. How would you describe its relationship?
  #Answer: Less cylinders means less inertia in the engine. 
  #As the number of cyclinders increases, the number of engine
  #displacement also increases.
  
#6. Get the total number of observations for drv - type of drive train (f = front-wheel drive,
#r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.).
#Plot using the geom_tile() where the number of observations for class be used as a
#fill for aesthetics.
  
                                                                      
  #a. Show the codes and its result for the narrative in #6.
  
  ggplot(data = mpg, mapping = aes(x = drv, y = class)) + geom_tile(aes(fill=class))
  
  #b. Interpret the result.
  #Under the 4 wheel drive are the suv, subcompact, pick-up,       
  #midsize and compact. Then Mini van is only a front wheel        
  #drive while 2seater is only a rear wheel drive.
  
  
#7. Discuss the difference between these codes. Its outputs for each are shown below.
  #Code #1
  
  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy, colour = "blue"))
  
  
  #Code #2
  
  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy), colour = "blue")
  
  #Answer: The outputs are closely the same except for some minor 
  #differences. Based on the output, they differ in color, one is red 
  #and the other one is blue. The first one also has a legend for 
  #its colour compared to the second one that has none.
    
#8. Try to run the command ?mpg. What is the result of this command?
   
    ?mpg
    
    #a. Which variables from mpg dataset are categorical?
    #Answer: Categorical variables in mpg include: manufacturer, 
    #model, trans (type of transmission), drv (front-wheel drive, 
    #rear-wheel, 4wd), fl (fuel type), and class (type of car).     
  
    #b. Which are continuous variables?
    #Answer: doubles or integers
    
    #c. Plot the relationship between displ (engine displacement) and hwy(highway miles
    #per gallon). Mapped it with a continuous variable you have identified in #5-b. What 
    #is its result? Why it produced such output?
      ggplot(mpg, aes(x=displ, y=hwy, colour = cty)) +geom_point()    
         
    #Answer: The displ(engine displacement) and hwy(highway miles    
    #per gallon) are matched together through mapping/plotting it    
    #then the values are represented by the different shade of       
    #color blue.  
      
      
#9. Plot the relationship between displ (engine displacement) and hwy(highway miles
#per gallon) using geom_point(). Add a trend line over the existing plot using
#geom_smooth() with se = FALSE. Default method is “loess”.
  
  ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping=aes(color=class)) +
    geom_smooth(se = FALSE)
  
  
#10. Using the relationship of displ and hwy, add a trend line over existing plot. Set the
#se = FALSE to remove the confidence interval and method = lm to check for linear
#modeling.
  
  ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() + geom_smooth(se = FALSE, method = lm)