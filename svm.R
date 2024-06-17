library(e1071)
library(caTools)
data<-read.csv("C:/Users/balakrishnan k s/Documents/R programs/heart.csv")
if(any(is.na(data))){
  print('null data present')
}else{
  print('no null data')
}
data$ST.depression=as.numeric(data$ST.depression)
data$Heart.Disease=as.factor(data$Heart.Disease)
sample <- sample.split(data$Heart.Disease, SplitRatio = 0.7)
train <- subset(data, sample == TRUE)
test <- subset(data, sample == FALSE)
model<-svm(Heart.Disease~.,data=train,kernel='linear')
pred<-predict(model,test)
print(pred)
svm_accuracy <- mean(pred == test$Heart.Disease) 
print(paste("Accuracy of SVM model:", svm_accuracy))