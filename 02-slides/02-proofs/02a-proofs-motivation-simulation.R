library(tidyverse)

# sample 1 million numbers between 1 and 6
dice_1 <- sample(1:6, 10e6, replace = T)
dice_2 <- sample(1:6, 10e6, replace = T)
outcome <- dice_1 + dice_2

# plot frequency of each outcome
tibble(
  outcome     = as.factor(2:12),
  frequency   = table(dice_1 + dice_2) %>% as.vector()
) %>% 
  ggplot(aes(x = outcome, y = frequency)) + geom_col()

