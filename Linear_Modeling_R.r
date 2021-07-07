library(ggplot2)

read.csv("regrex1.csv")

regrex1 <- read.csv("regrex1.csv")

ggplot(regrex1, aes(x,y)) + geom_point()

ggplot(regrex1, aes(x,y)) + geom_point() + geom_smooth(method = "lm", se = F)

linmod <- lm(y ~ x, data = regrex1)
summary(linmod)

plot(y ~ x, data = regrex1)
abline(linmod)
