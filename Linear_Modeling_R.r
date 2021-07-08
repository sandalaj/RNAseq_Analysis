#!/usr/bin/env Rscript
args = commandArgs(trailingOnly=TRUE)

library(ggplot2)

csv_data <- read.csv(args[1])
print(args[1])

ggplot(csv_data, aes(x,y)) + geom_point()

ggsave("r_orig.png")

ggplot(csv_data, aes(x,y)) + geom_point() + geom_smooth(method = "lm", se = F)

ggsave("r_lm.png")

linmod <- lm(y ~ x, data = csv_data)
summary(linmod)

plot(y ~ x, data = csv_data)
abline(linmod)