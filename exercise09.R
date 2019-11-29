rm(list = ls())

library(ggplot2)

## Problem 1 ##
fish_data = read.csv("rec_fisheries.csv", header = T)

ggplot(data = fish_data, mapping = aes(x = anglers, y = fish.harvested)) +
  geom_point() + geom_smooth(method = lm, se = F) +
  xlab("Recreational Fishermen") + ylab("Fish Harvested Recreationally") +
  theme_minimal()

## Problem 2 ##
data = read.table("data.txt", sep = ",", header = T)

#bar plot
ggplot(data = data, mapping = aes(x = region, y = observations)) +
  geom_bar(mapping = aes(fill = region), stat = "summary", fun.y = "mean") +
  theme_minimal()

#scatter plot
ggplot(data = data, mapping = aes(x = region, y = observations)) +
  geom_jitter(mapping = aes(color = region)) +
  theme_minimal()

#the bar plot shows that the means of the four regions are almost the exact same but the scatter plot shows that
#the distributions causing the same mean are very different