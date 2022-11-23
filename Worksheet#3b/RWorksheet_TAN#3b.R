#Worksheet 3b

#1. Create a data frame using the table below
  
  #a. Write the codes.

table <-data.frame(
  Respondents = c(1:20),
  Sex = c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2),
  Fathers = c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1),
  Persons = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
  Siblings = c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
  Houses = c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2)
   )
  names(table)<-list("Respondents", "Sex", "Fathers occupation", 
                      "Persons at home", "Siblings at school", 
                      "Types of houses")
   table
    
    
  #b. Describe the data. 
  #Get the structure or the summary of the data
    
  summary(table)
    
    
  #c. Is the mean number of siblings attending is 5?
    
  #Answer: No
      
      
  #d. Extract the 1st two rows and then all the columns using the subsetting functions.
  #Write the codes and its output.

    sub_data1 <- subset(table[1:2, 1:6, drop = FALSE])
    sub_data1
    
  #e. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and its result.
   
    sub_data2 <- subset(table[c(3,5), c(2,4)])
    sub_data2
    
    
  #f. Select the variable types of houses then store the vector that results as types_houses.
  #Write the codes.
    
    types_house<- table$'Types of houses'
    types_house
    
    
  #g. Select only all Males respondent that their father occupation was farmer. Write
  #the codes and its output.
    
    farmer_data <- subset(table[c(1:20), c(2,3)])
    farmer_data
    
    male <- farmer_data[table$'Fathers occupation' =='1',]
    male
    
  #Answer: There were no males whose father worked as a farmer.
    
  #h. Select only all females respondent that have greater than or equal to 5 number 
  #of siblings attending school. Write the codes and its outputs.

    female_data <- subset(table[c(1:20), c(2,5)])
    
    sas <- female_data[table$'Siblings at school' >= 5,]
    sas
    
    
#2. Write a R program to create an empty data frame. Using the following codes:
      df = data.frame(Ints=integer(),
                      Doubles=double(), Characters=character(),
                      Logicals=logical(),
                      Factors=factor(),
                      stringsAsFactors=FALSE)
    print("Structure of the empty dataframe:")
    print(str(df))
    
    
    #a. Describe the results.
    
    #Answer: There are no columns, five rows, and zero levels in the data frame.
    
    
#3. Interpret the graph.
   
    #Answer: The graph's title is "Sentiments of Tweets per day - Donald Trump." 
    #The legend represents three different sentiments: negative, neutral, 
    #and positive. The highest number of negative tweets was 4,300 on 
    #July 15, 2020. On July 15, 2020, the neutral reached a high of around 
    #2,800. Finally, on July 21, 2020, the highest number of positive tweets was 
    #approximately 3,400.
