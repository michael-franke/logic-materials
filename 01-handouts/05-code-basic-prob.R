library(tidyverse)
theme_set(theme_bw() + theme(plot.background=element_blank()) )

# binomial distribution
binom.plot.data = expand.grid(n = 24, theta = c(0.25, 0.5), k = 0:24) %>% 
  mutate(probability = dbinom(k,n,theta), theta = as.factor(theta))
binom.plot = ggplot(binom.plot.data, aes(x = k, y = probability, fill = theta)) + 
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("darkgrey", "firebrick")) + ylab("Binom(K = k; n=24, theta)")
ggsave(binom.plot,filename = "00-pics/05_00_binomial-distribution.pdf", width = 6, height = 3)


# cumulative distribution
binom.plot.data = expand.grid(n = 24, theta = c(0.25, 0.5), k = 0:24) %>% 
  mutate(probability = pbinom(k,n,theta), theta = as.factor(theta))
binom.plot.cumulative = ggplot(binom.plot.data, aes(x = k, y = probability, fill = theta)) + 
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_manual(values = c("darkgrey", "firebrick")) + ylab("Binom(K <= k; n=24, theta)")
ggsave(binom.plot.cumulative,filename = "00-pics/05_00_binomial-distribution-cumulative.pdf", width = 6, height = 3)


# normal distribution
normal.plot = ggplot(data.frame(x = c(-8, 8)), aes(x = x)) +
  stat_function(fun = function(x) dnorm(x, sd = 4), aes(color = "4")) +
  stat_function(fun = function(x) dnorm(x, sd = 1), aes(color = "1")) +
  scale_colour_manual("standard deviation", breaks = c("4", "1"), values = c("firebrick", "darkgrey")) +
  ylab("Norm(X = x ; mu = 0, sd")
normal.plot
ggsave(normal.plot,
       filename = "00-pics/05_01_normal-distribution.pdf", 
       width = 6, height = 3)

# normal distribution cumulative
normal.plot.cumulative = ggplot(data.frame(x = c(-8, 8)), aes(x = x)) +
  stat_function(fun = function(x) pnorm(x, sd = 4), aes(color = "4")) +
  stat_function(fun = function(x) pnorm(x, sd = 1), aes(color = "1")) +
  scale_colour_manual("standard deviation", breaks = c("4", "1"), values = c("firebrick", "darkgrey")) +
  ylab("Norm(X <= x ; mu = 0, sd")
normal.plot.cumulative
ggsave(normal.plot.cumulative,
       filename = "00-pics/05_01_normal-distribution-cumulative.pdf", 
       width = 6, height = 3)

# pie charts

# Create Data
data <- data.frame(
  group=factor(c('sunny', 'cloudy', 'rainy'), levels = c('sunny', 'cloudy', 'rainy')),
  value=c(6,2,2)
)

# compute label position
data <- data %>% 
  arrange(desc(group)) %>%
  mutate(prop = value / sum(data$value) *100) %>%
  mutate(ypos = cumsum(prop)- 0.5*prop )

# Basic piechart
ggplot(data, aes(x="", y=prop, fill=group)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  theme_void() + 
  theme(legend.position="none") +
  geom_text(aes(y = ypos, label = group), color = "black", size=6) +
  scale_fill_manual(values=c('cornsilk2', 'cornsilk3', 'cornsilk4'))
ggsave(
       filename = "00-pics/05_01_normal-distribution-cumulative.pdf", 
       width = 4, height = 4)

