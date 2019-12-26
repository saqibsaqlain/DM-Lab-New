library(party)
library(caret)
library(e1071)
data <- readingSkills
index <- sample(2, nrow(data), replace=TRUE, prob=c(0.7,0.3))
train <- data[index==1,]
test <- data[index==2,]
features <- nativeSpeaker ~ age + shoeSize + score
model2 <- naiveBayes(features, data=train)
print(model2)
test_predictions2 <- predict(model2, newdata = test)
confusionMatrix(test_predictions2, test$nativeSpeaker, positive="yes")