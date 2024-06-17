library(caTools)
df=read.csv("C:/Users/balakrishnan k s/Documents/R programs/car.csv")
#removing user id
df<-subset(df, select= -User.ID)
str(df)
model<- glm(Purchased ~ .,df,family=binomial)
summary(model)
new_data <- data.frame(
  Gender = 'Male',
  Age = 35,
  AnnualSalary = 20000
  
)
pred<- predict(model,new_data,type='response')
pred <- ifelse(pred >= 0.5, 1, 0)
cat('prediction:',pred,'\n')
accuracy <- mean(pred == df$Purchased)
cat('accuracy:',accuracy)