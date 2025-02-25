library(dplyr)

# 設置工作路徑
setwd("C:/Users/eddie/OneDrive/文档/GitHub/coding-stuff-I-make-from-learning/R/lab4")

# 讀取檔案
data <- read.csv("DiamondsPrices.csv")

# 篩選 cut 為 fair 鑽石
diam_fair <- data %>%
    filter(cut == "Fair")
diam_fair


# 設置圖片分布
par(mfrow = c(1, 1))

# 設置 Margin
par(mar = c(7, 6, 5, 5))

# 直接分布圖
hist(diam_fair$price,
    main = "Distribution of diamond in Fair",
    xlab = "Price value of diamond",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2,
)

# 抽樣分布
par(mfrow = c(1, 3))
# 抽樣 n = 50
dist_of_mean_1 <- rep(0, 10000)

for (i in 1:10000) {
    dist_of_mean_1[i] <- mean(sample(diam_fair$price, 50))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_1,
    main = "Sampling size 50",
    xlab = "Price value of diamond",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)

# 抽樣 n = 250
dist_of_mean_2 <- rep(0, 10000)

for (i in 1:10000) {
    dist_of_mean_2[i] <- mean(sample(diam_fair$price, 250))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_2,
    main = "Sampling size 250",
    xlab = "Price value of diamond",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)

# 抽樣 n = 500
dist_of_mean_3 <- rep(0, 10000)

for (i in 1:10000) {
    dist_of_mean_3[i] <- mean(sample(diam_fair$price, 500))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_3,
    main = "Sampling size 500",
    xlab = "Price value of diamond",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)

par(mfrow = c(1, 1))
# 箱狀圖
boxplot(
    diam_fair$price,
    dist_of_mean_1,
    dist_of_mean_2,
    dist_of_mean_3,
    main = "Distribution of diamond in Fair and sample",
    xlab = "Price value of diamond",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)

means <- c(
    mean(diam_fair$price),
    mean(dist_of_mean_1),
    mean(dist_of_mean_2),
    mean(dist_of_mean_3)
)
points(means,
    col = "red",
    pch = 20,
    cex = seq(2.5, 3, 0.1)
)
text(
    x = 1:4, # Add text to plot
    y = means - 500,
    labels = round(means, 1),
    col = "red",
    cex = seq(2.5, 3, 0.1)
)

# Add income data to compare
# Data source from https://www.kaggle.com/datasets/uciml/adult-census-income

income <- read.csv("Income.csv")

income_hsgrad <- income %>%
    filter(education == "HS-grad")

# income_hsgrad


par(mfrow = c(1, 1))
# 直接分布圖
hist(income_hsgrad$fnlwgt,
    main = "Distribution of wight in education with HS-grad",
    xlab = "Final weight",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)



# 抽樣分布
par(mfrow = c(1, 3))
# 抽樣 n = 50
dist_of_mean_1 <- rep(0, 10000)

for (i in 1:10000) {
    dist_of_mean_1[i] <- mean(sample(income_hsgrad$fnlwgt, 50))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_1,
    main = "Sampling size 50",
    xlab = "Final weight",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2,
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)

# 抽樣 n = 250
dist_of_mean_2 <- rep(0, 10000)




for (i in 1:10000) {
    dist_of_mean_2[i] <- mean(sample(income_hsgrad$fnlwgt, 250))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_2,
    main = "Sampling size 250",
    xlab = "Final weight",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)

# 抽樣 n = 500
dist_of_mean_3 <- rep(0, 10000)

for (i in 1:10000) {
    dist_of_mean_3[i] <- mean(sample(income_hsgrad$fnlwgt, 500))
}

### Creating a histogram of the distribution of the sample mean
hist(dist_of_mean_3,
    main = "Sampling size 500",
    xlab = "Final weight",
    col = "cadetblue",
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 3,
    cex.sub = 2
)


par(mfrow = c(1, 1))
# 箱狀圖
boxplot(
    income_hsgrad$fnlwgt,
    dist_of_mean_1,
    dist_of_mean_2,
    dist_of_mean_3,
    main = "Distribution of final weight in education of HS_grad",
    xlab = "Final weight",
    col = "cadetblue",
    ylim = c(35000, 500000),
    cex.lab = 3,
    cex.axis = 2,
    cex.main = 2.5,
    cex.sub = 2
)

means <- c(
    mean(income_hsgrad$fnlwgt),
    mean(dist_of_mean_1),
    mean(dist_of_mean_2),
    mean(dist_of_mean_3)
)
points(means,
    col = "red",
    pch = 20,
    cex = seq(2.5, 3, 0.1)
)
text(
    x = 1:4, # Add text to plot
    y = means - 12000,
    labels = round(means, 1),
    col = "red",
    cex = seq(2.5, 3, 0.1)
)
