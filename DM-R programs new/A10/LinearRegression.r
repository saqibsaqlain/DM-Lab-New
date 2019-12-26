data<-read.csv("/home/saqib/Desktop/DM-R programs/climate.csv")
data
hum<- data$humidity
moist<- data$moisture
features<- moist~hum
new_data<- data.frame(hum, moist)
model<- lm(features,new_data)
plot(features)
abline(model)
test<- data.frame(num=c(200))
ans<-predict(model,test)
ans
