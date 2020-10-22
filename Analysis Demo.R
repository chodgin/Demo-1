#make data set

Sys.which("make")

df <- data.frame(x = rnorm(50, 16, 4),
                 group = rep(c("group1", "group2"), each = 25))

library(tidyverse)

df %>% group_by(group) %>%
  summarise(mean = mean(x),
            n = length(n),
            sd = sd(x))

