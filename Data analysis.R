df = read.csv('insurance.csv')
num_cols = unlist(lapply(df,is.numeric))
plot(df[num_cols])

round(cor(df[num_cols]),2)

boxplot(df$charges)
boxplot(df$charges ~ df$sex)

boxplot(df$charges)
boxplot(df$charges ~ df$region)

boxplot(df$charges)
boxplot(df$charges ~ df$smoker)

model = lm(charges ~., data=df)
summary(model)
