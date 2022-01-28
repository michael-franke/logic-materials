library(tidyverse)

# Mutual information example (using KL-divergence)
P <- c(.24, .08, .08, .06, .12, .42)
Q <- c(.12, .08, .20, .18, .12, .3)
sum(P * log(P/Q, base = 2))

