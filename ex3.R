tail(instacart_100k)
head(instacart_100k)
table(instacart_100k$order_dow)
o <- instacart_10
str(o, max.level=1)
hist(o$order_dow)
hist(o$order_hour_of_day)
ggplot(o, aes(x=order_hour_of_day)) +
  geom_histogram(binwidth = 1) +
  facet_grid(. ~ order_dow)
ggplot(o, aes(stat=o$department)) +
  geom_histogram(binwidth = 1) +
  facet_grid(. ~ order_dow)

