#Virginica

#1. data(iris)
iris_data <- data.frame(iris)
iris_data

#2. Subset the iris file into 3 files per species
virginica_data <- subset(iris_data, Species == 'virginica' )
virginica_data

#Sepal Length, Sepal Width, Petal Length, Petal Width
sepal_length <- iris$Sepal.Length[101:150]
sepal_length

sepal_width <- iris$Sepal.Width[101:150]
sepal_width 

petal_length <- iris$Petal.Length[101:150]
petal_length

petal_width <- iris$Petal.Width[101:150]
petal_width

#3. Get total mean for each species
mean_virginica <- c(sepal_length, sepal_width, petal_length, petal_width)
mean_virginica

#Total mean
mean(mean_virginica)


#4. Get the mean of each characteristics of the species

#Mean of Sepal Length (Virginica)
slvn_mean <- mean(sepal_length)
slvn_mean

#Mean of Sepal Width (Virginica)
swvn_mean <- mean(sepal_width)
swvn_mean

#Mean of Petal Length (Virginica)
plvn_mean <- mean(petal_length)
plvn_mean

#Mean of Petal Width (Virginica)
pwvn_mean <- mean(petal_width)
pwvn_mean
