install.packages("rpart.plot")
library(rpart)
library(rpart.plot)

data = read.csv("F:\\RRR\\gender.csv")

tree <- rpart(Height ~ Gender+Weight,data)
a <- data.frame(Gender=c("Female"),Weight=c(76))
result <- predict(tree,a)
print(result)
rpart.plot(tree)

tree <- rpart(Gender ~ Height+Weight,data)
a <- data.frame(Height=c(149),Weight=c(75))
result <- predict(tree,a)
print(result)

rpart.plot(tree)
