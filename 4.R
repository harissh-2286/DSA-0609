library(ggplot2)
set.seed(123)   # optional: keeps results same every time
age_data <- data.frame(
  Age = sample(18:70, 50, replace = TRUE)
)
ggplot(age_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "purple", color = "black", alpha = 0.7) +
  labs(
    title = "Age Distribution",
    x = "Age",
    y = "Frequency"
  ) +
  theme_minimal()
