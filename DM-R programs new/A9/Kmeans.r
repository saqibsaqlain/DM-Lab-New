library(factoextra)
library(cluster)
data<-read.csv("/home/saqib/Desktop/DM-R programs/movie.csv")
d<- scale(dist(data,method="euclidean"))
kfit<- kmeans(d,3)
fviz_cluster(kfit,data)

plot(kfit)

