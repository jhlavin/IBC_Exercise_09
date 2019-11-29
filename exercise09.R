rm(list = ls())

library(ggplot2)

##Problem 2##
data = read.table("data.txt", sep = ",", header = T)

#bar plot
ggplot(data = data, mapping = aes(x = region, y = observations)) +
  geom_bar(mapping = aes(fill = region), stat = "summary", fun.y = "mean") +
  theme_minimal()

#scatter plot
ggplot(data = data, mapping = aes(x = region, y = observations)) +
  geom_jitter(mapping = aes(color = region)) +
  theme_minimal()
