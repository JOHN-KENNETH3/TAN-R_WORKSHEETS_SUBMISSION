#Using Vectors

#1. There is a built-in vector LETTERS contains the uppercase letters of the alphabet
#and letters which contains the lowercase letters of the alphabet.
LETTERS
## [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S"
## [20] "T" "U" "V" "W" "X" "Y" "Z"
letters
## [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s"
## [20] "t" "u" "v" "w" "x" "y" "z"

#Based on the above vector LETTERS:
  
  #a. You need to produce a vector that contains the first 11 letters.
LETTERS_11 <- c(LETTERS[1:11])
LETTERS_11

  #b. Produce a vector that contains the odd numbered letters.
odd_LETTERS <- c(LETTERS[1:26 %% 2 != 0])
odd_LETTERS

  #c. Produce a vector that contains the vowels
vow_LETTERS <- LETTERS[c(1,5,9,15,21)]
vow_LETTERS

#Based on the above vector letters:
  
  #d. Produce a vector that contains the last 5 lowercase letters.
letters_5 <- c(letters[22:26])
letters_5

  #e. Produce a vector that contains letters between 15 to 24 letters in lowercase.
letters15_24 <- c(letters[15:24])
letters15_24
  
  
#2. Create a vector with the average temperatures in April for Tuguegarao City, Manila,
#Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in
#Celcius are 42, 39, 34, 34, 30, and 27 degrees.

  #a. What is the R code and its result for creating a character vector for the city/town of
  #Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
  #object as city. The names should follow the same order as in the instruction.
city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
city


  #b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
  # the object as temp. Write the R code and its output. Numbers should also follow what is in the instruction.
temp <- c(42, 39, 34, 34, 30, 27)
temp  


  #c. Associate the temperature temp with the city by using names() function. What is
  #the R code and its result?
names(temp) <- city
temp  
  
  #e. From the answer in d, what is the content of index 5 and index 6? What is its R code?
index_data <- temp[5:6]  
index_data 
  
  
#Using Matrix  
  
#2. Create a matrix of one to eight and eleven to fourteen with four columns and three rows.

 #a. What will be the R code for the #2 question and its result?
Matrix_data <- matrix(c(1:8, 11:14), nrow =3, ncol = 4)
Matrix_data

  #b. Multiply the matrix by two. What is its R code and its result?
mul_matrix <- Matrix_data*2
mul_matrix    
    
  #c. What is the content of row 2? What is its R code?
access_row <- c(mul_matrix[2,])
access_row    
    
  #d. What will be the R code if you want to display the column 3 and column 4 in row 1
  #and row 2? What is its output?
access_data1 <- mul_matrix [c(1,2),c(3,4)]  
access_data1

  #e. What is the R code is you want to display only the columns in 2 and 3, row 3? What
  #is its output?
access_data2 <- mul_matrix [c(3), c(2,3)] 
access_data2 
  
  #f. What is the R code is you want to display only the columns 4? What is its output?
access_data3 <- mul_matrix[, 4] 
access_data3  

  #g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro
  #for the matrix that was created in b. What is its R code and corresponding output?
dimnames(mul_matrix) <- list(c("isa", "dalawa", "tatlo"),c("uno", "dos", "tres", "quatro"))
mul_matrix

  #h. From the original matrix you have created in a, reshape the matrix by assigning a
  #new dimension with dim(). New dimensions should have 2 columns and 6 rows. What will
  #be the R code and its output?
dim(Matrix_data) = c(6,2)
Matrix_data


#Using Arrays

#3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1

#a. Create an array for the above numeric values. Each values will be repeated twice    What will be the R code if you are to create a three-dimensional array with 4 columns   and 2 rows. What will be its output?

array_data <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1) 
array_data  

Arr_3D <- array(rep(array_data,2), dim= c(2,4,3))
Arr_3D

#b. How many dimensions do your array have?
#Answer: The array contained 3(three) dimensions


#c. Name the rows as lowercase letters and columns as uppercase letters starting from   the A. The array names should be ???1st-Dimensional Array???, ???2nd-Dimentional Array???,and ???3rd-Dimensional Array???. What will be the R codes and its output?  
dimnames(Arr_3D) <- list(letters[1:2],LETTERS[1:4], c("1st-Dimensional Array","2nd-Dimentional Array","3rd-Dimensional Array")) 
Arr_3D  
 
