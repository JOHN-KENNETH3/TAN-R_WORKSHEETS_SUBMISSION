#Setosa

#1. data(iris)
iris_data <- data.frame(iris)
iris_data

#2. Subset the iris file into 3 files per species
setosa_data <- subset(iris_data, Species == 'setosa' )
setosa_data

#Sepal Length, Sepal Width, Petal Length, Petal Width
sep_Length <- iris$Sepal.Length[1:50]
sep_Length

sep_Width <- iris$Sepal.Width[1:50]
sep_Width 

pet_Length <- iris$Petal.Length[1:50]
pet_Length

pet_Width <- iris$Petal.Width[1:50]
pet_Width

#3. Get total mean for each species
mean_setosa <- c(sep_Length, sep_Width, pet_Length, pet_Width)
mean_setosa 

#Total mean
mean(mean_setosa)

#4. Get the mean of each characteristics of the species

#Mean of Sepal Length (Setosa)
sls_mean <- mean(sep_Length)
sls_mean

#Mean of Sepal Width (Setosa)
sws_mean <- mean(sep_Width)
sws_mean

#Mean of Petal Length (Setosa)
pls_mean <- mean(pet_Length)
pls_mean

#Mean of Petal Width (Setosa)
pws_mean <- mean(pet_Width)
pws_mean
