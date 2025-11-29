library(ggplot2)
temperature_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May"),
  City_A = c(5, 6, 7, 8, 9),
  City_B = c(10, 11, 12, 13, 14),
  City_C = c(15, 16, 17, 18, 19)
)
melted_data <- reshape(
  temperature_data,
  varying = list(c("City_A", "City_B", "City_C")),
  v.names = "Temperature",
  timevar = "City",
  times = c("City_A", "City_B", "City_C"),
  direction = "long"
)
ggplot(melted_data, aes(x = Month, y = City, fill = Temperature)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(
    title = "Monthly Temperatures",
    x = "Month",
    y = "City"
  ) +
  theme_minimal()
