 library(caTools)
df=read.csv("C:/Users/balakrishnan k s/Documents/R programs/real_estate.csv.csv")
sample <- sample.split(df, SplitRatio = 0.7)
train <- subset(df, sample == TRUE)
test <- subset(df,select=-Y.house.price.of.unit.area, sample == FALSE)
model <- lm(Y.house.price.of.unit.area ~ ., data = train)
predicted_values <- predict(model,test)
print(predicted_values)
r_squared <- summary(model)$r.squared
accuracy_percentage <- r_squared * 100
print(paste("Accuracy:", round(accuracy_percentage, 2), "%"))
new_data <- data.frame(No=3,
                       
                       X1.transaction.date=2013.583,
                       X2.house.age=13.3,
                       X3.distance.to.the.nearest.MRT.station=561.9845,
                       X4.number.of.convenience.stores=5,
                       X5.latitude=24.98746,
                       X6.longitude=121.54391)
# Predict using the linear regression model
prediction <- predict(model, newdata = new_data)
cat('Prediction:',prediction)

