#Versicolor

#1. data(iris)
iris_data <- data.frame(iris)
iris_data

#2. Subset the iris file into 3 files per species
versicolor_data <- subset(iris_data, Species == 'versicolor' )
versicolor_data

#Sepal Length, Sepal Width, Petal Length, Petal Width
sep_length <- iris$Sepal.Length[51:100]
sep_length

sep_width <- iris$Sepal.Width[51:100]
sep_width

pet_length <- iris$Petal.Length[51:100]
pet_length

pet_width <- iris$Petal.Width[51:100]
pet_width

#3. Get total mean for each species
mean_versicolor <- c(sep_length, sep_width, pet_length, pet_width)
mean_versicolor 

#Total mean
mean(mean_versicolor)


#4. Get the mean of each characteristics of the species

#Mean of Sepal Length (Versicolor)
slvc_mean <- mean(sep_Length)
slvc_mean

#Mean of Sepal Width (Versicolor)
swvc_mean <- mean(sep_Width)
swvc_mean

#Mean of Petal Length (Versicolor)
plvc_mean <- mean(pet_Length)
plvc_mean

#Mean of Petal Width (Versicolor)
pwvc_mean <- mean(pet_Width)
pwvc_mean
