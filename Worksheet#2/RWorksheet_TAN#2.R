#Worksheet-2 in R
#Tan, John Kenneth D.
#BSIT 2-A

#Instructions:
#Use RStudio or the RStudio Cloud accomplish this worksheet. + Save the R script as
#RWorksheet_lastname#2.R.
#Create your own GitHub repository and push the R script as well as this pdf worksheet
#to your own repo.
#Accomplish this worksheet by answering the questions being asked and writing the code
#manually.


#1. Create a vector using : operator

#a.	Sequence from -5 to 5. 
#Write the R code and its output. Describe its output.

NumSeq<- c(-5:5)
NumSeq
[1] -5 -4 -3 -2 -1  0  1  2  3  4  5

#A sequence from -5 to 5 is stored in the object called NumSeq and was displayed.


#b.	x <- 1:7. What will be the value of x?
x <- 1:7
x
[1] 1 2 3 4 5 6 7


#2. Create a vector using seq() function

#a. seq(1, 3, by=0.2) #specify step size
#Write the R code and its output. Describe the output.

seq(1, 3, by=0.2)
[1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#The gap of these numbers in the sequence was 0.2.


#3. A factory has a census of its workers. There are 50 workers in total. 
#The following list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 
#29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53,
#41, 51, 35,24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 
#58, 26,18.

age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 
         57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 
         18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18)
age

#a.	Access 3rd element, what is the value?
  third_element <- c(age[3])
  third_element
#Ans: [1] 22

#b.	Access 2nd and 4th element, what are the values?
second_and_fourth_element <-age[c(2,4)]
second_and_fourth_element
#Ans: [1] 28 36

#c.	Access all but the 1st element is not included. Write the R code and its output.
all_element <- age[c(2:50)]
all_element
#Ans: [1] 28 22 36 27 18 52 39 42 29 35 31 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51
#[30] 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18


#4.	Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).

a.	Print the results. Then access x[c("first", "third")]. Describe the output.

names<- c("first"=3, "second"=0, "third"=9)
names
names <-names [c("first","third")]
names
#The first with the value of 3 and third with a value of 9 were accessed. Therefore
#the second with a value of 0 didn't displayed.

b.	Write the code and its output.
names<- c("first"=3, "second"=0, "third"=9)
names
#Ans: first second  third 
       3      0      9 

names <-names [c("first","third")]
names
#Ans: first third 
       3     9 


#5. Create a sequence x from -3:2.

#a. Modify 2nd element and change it to 0;
x<- -3:2
x

#Ans: [1] -3 -2 -1  0  1  2
x[2]<-0
x
#[1] -3  0 -1  0  1  2

#Describe the output:
#The second element which is -2 was changed to 0


#6.	The following data shows the diesel fuel purchased by Mr. Cruz.

#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter).
#Write the codes.

Diesel_Fuel<- data.frame(
  Month = c("Price per liter (PhP)", "Purchase-quantity(Liter)"),
   Jan = c(52.50, 25),
   Feb = c(57.25, 30),
   March = c(60.00, 40),
   Apr = c(65.00, 50),
   May = c(74.25, 10),
   June = c(54.00, 45)
)
Diesel_Fuel
  
#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use
#weighted.mean(liter, purchase)

liter<-c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
purchase<-c(25,30,40,50,10,45)
weighted.mean(liter, purchase)

#Ans: [1] 59.2625


#7. R has actually lots of built-in datasets. For example, the rivers data “gives the lengths
#(in miles) of 141 “major” rivers in North America, as compiled by the US Geological Survey”.

#a. Type “rivers” in your R console. Create a vector data with 7
#elements, containing the number of elements (length) in rivers,
#their sum (sum), mean (mean), median (median), variance (var)
#standard deviation (sd), minimum (min) and maximum (max).

rivers
[1]  735  320  325  392  524  450 1459  135  465  600  330  336  280  315  870  906  202
[18]  329  290 1000  600  505 1450  840 1243  890  350  407  286  280  525  720  390  250
[35]  327  230  265  850  210  630  260  230  360  730  600  306  390  420  291  710  340
[52]  217  281  352  259  250  470  680  570  350  300  560  900  625  332 2348 1171 3710
[69] 2315 2533  780  280  410  460  260  255  431  350  760  618  338  981 1306  500  696
[86]  605  250  411 1054  735  233  435  490  310  460  383  375 1270  545  445 1885  380
[103]  300  380  377  425  276  210  800  420  350  360  538 1100 1205  314  237  610  360
[120]  540 1038  424  310  300  444  301  268  620  215  652  900  525  246  360  529  500
[137]  720  270  430  671 1770


#b. What are the results?

#length = 141.0000
#sum = 83357.0000 
#mean =  591.1844
#median = 425.0000
#variance = 243908.4086
#standard deviation = 493.8708 
#minimum = 135.0000
#maximum = 3710.0000
  
#c. Write the code and its outputs.
rivers
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#Ans:[1]    141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000
#[8]   3710.0000



#8 a. Create vectors according to the above table. Write the codes.

Powerful_Celeb <- data.frame(
  Power_Ranking = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 
                    15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25), 
  Celebrity_Name = c("Tom cruise", "Rolling Stone", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", 
                    "Howard Stem", "50 cents", "Cast of the Supranos", "Dan brown", "Bruce Springteen", "Donald Trump","Muhammad Ali",
                    "Paul McCartney", "Goerge Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", 
                    "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant"),
  Pay = c(67, 90, 225, 110 , 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31 )
)

Powerful_Celeb


#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and
#pay to 90. Write the codes and its output.

Power_Ranking <- 1:25
CelebrityName <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", 
                   "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the sopranos",
                   "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney",
                   "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling",
                   "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")
Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40,
         233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)


Power_Ranking [19] <-15
Power_Ranking
Pay [19] <- 90
Pay

Powerful_Celeb <- data.frame(Power_Ranking, CelebrityName, Pay)
Powerful_Celeb

#c. Interpret the data
#Powerful_Celeb is the object used to store the ranking of powerful celebrities.
#Through the data frame, their rankings are clearly shown vertically. Inside the object, 
#PowerRanking, CelebrityName, and Pay are stored. After a successful display, J.K Rowling
#power ranking was modified to 15 and pay to 
#power ranking is modified/changed to 15 and pay to 90.



