library(factoextra)
library(cluster)
data<-read.csv("/home/saqib/Desktop/DM-R program/diabetes.csv")
data$Result<-NULL
d<-dist(data, method = "euclidean")
hmodel<- hclust(d)
plot(hmodel)
