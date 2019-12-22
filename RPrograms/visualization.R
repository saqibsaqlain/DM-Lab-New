data <- iris

data
attributes(data)
summary(data)
mean(data$Sepal.Length)
median(data$Sepal.Width)
range(data$Petal.Length)

cov(data$Sepal.Length, data$Petal.Length)
cor(data$Sepal.Length, data$Petal.Length)

#Visualization
hist(data$Sepal.Length)
plot(density(data$Sepal.Length))
pie(table(data$Species))
barplot(table(data$Species))
plot(data$Petal.Length)
