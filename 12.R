library(ggplot2)
library(hexbin)

engagement <- data.frame(
  Date = as.Date(c("2023-01-01","2023-01-02","2023-01-03","2023-01-04","2023-01-05","2023-01-06","2023-01-07")),
  Likes = c(150,200,250,300,350,400,450),
  Comments = c(20,25,30,35,40,45,50),
  Shares = c(30,35,40,45,50,55,60)
)

ggplot(engagement, aes(Likes, Shares)) +
  stat_bin_hex() +
  labs(title="Social Media Engagement Hexbin Plot",
       x="Likes", y="Shares") +
  theme_minimal()
