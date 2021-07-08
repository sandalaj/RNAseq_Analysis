#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)

library(ggplot2)

csv_data <- read.csv(args[1])
print(args[1])

ggplot(csv_data, aes(x,y)) + geom_point()
png("r_orig.png")
dev.off()

ggplot(csv_data, aes(x,y)) + geom_point() + geom_smooth(method = "lm", se = F)
png("r_lm.png")
dev.off()

linmod <- lm(y ~ x, data = csv_data)
summary(linmod)

plot(y ~ x, data = csv_data)
abline(linmod)