library(tidyverse)

# Mutual information example (using KL-divergence)
P <- c(.24, .08, .08, .06, .12, .42)
Q <- c(.12, .08, .20, .18, .12, .3)
sum(P * log(P/Q, base = 2))

x <- c(.6, .2, .2)
y <- c(.1, .2, .7)
- 0.4 * sum(x * log(x, base = 2)) - 0.6 * sum(y * log(y, base = 2))

KL <- function(P,Q) {
  sum(P * log(P/Q, base=2))
}

s <- c(5, 25, 15, 5)/50 * 0.25
ns <- c(40,25,15,20)/100 * 0.75
X <- matrix(c(s,ns), byrow = T, nrow = 2)
Q <- c(colSums(X) * 1/4, colSums(X) * 3/4)
P <- as.vector(t(X))
KL(P,Q)
