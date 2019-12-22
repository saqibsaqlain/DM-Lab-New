#library for fviz_cluster
library(factoextra)

#importing the Iris dataset and removing categorical attributes
data <- iris
data$Species <- NULL

d<- scale(dist(data,method = "euclidian"))
#KMeans
kfit <- kmeans(d,3)
#HClustering
hfit <- hkmeans(d, 3)
fviz_cluster(kfit, data)
fviz_cluster(hfit, data)

