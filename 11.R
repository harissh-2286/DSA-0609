library(ggplot2)

temperature_data <- data.frame(
  Week = as.Date(c("2023-01-01","2023-01-08","2023-01-15",
                   "2023-01-01","2023-01-08","2023-01-15",
                   "2023-01-01","2023-01-08","2023-01-15")),
  City = c("New York","New York","New York",
           "Los Angeles","Los Angeles","Los Angeles",
           "Chicago","Chicago","Chicago"),
  Temperature = c(-2,0,2,15,17,18,-5,-3,-2)
)

ggplot(temperature_data, aes(x=Week, y=Temperature, color=City, group=City)) +
  geom_line(size=1.2) +
  geom_point(size=3) +
  labs(title="Weekly Average Temperature Comparison",
       x="Week", y="Temperature (°C)", color="City") +
  theme_minimal(base_size=15)
