data <- read.csv("C:/Users/User/OneDrive/Documents/EDA Food Nutrition/Food_Nutrition_Dataset.csv")
head(data) #display few data
str(data) # check data type
summary (data) #box plot
colSums(is.na(data)) #tengok missing data
unique(data$category)
table(data$category)

hist(data$calories,
     main = "Distribution of Calories",
     xlab = "Calories",
     col = "pink")

boxplot(data[, c("calories","protein","carbs","fat")],
        main = "Boxplot of Nutrients",
        col = c("red","green","blue","orange"))

barplot(table(data$category),
        main = "Food Categories Count",
        xlab = "Category",
        ylab = "Count",
        las = 2,
        col = "purple")

scatterplot(data$calories, data$protein,
     main = "Calories vs Protein",
     xlab = "Calories",
     ylab = "Protein",
     col = "blue")



