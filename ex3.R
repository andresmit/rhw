 library(readr)
 instacart_100k <- read_csv("~/RProjects/rhw/instacart_100k.csv")
o <- instacart_100k
library(ggplot2)
o$order_hour_of_day <- as.numeric(o$order_hour_of_day)
ggplot(o, aes(x=order_hour_of_day)) +
  geom_histogram(binwidth = 1) +
  facet_grid(. ~ order_dow)
ggplot(o, aes(x=department)) +
  geom_histogram() +
  facet_grid(. ~ add_to_cart_order)
