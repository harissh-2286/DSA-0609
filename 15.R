library(ggplot2)

performance <- data.frame(
  Month = c("Jan","Jan","Jan","Feb","Feb","Feb","Mar","Mar","Mar"),
  Employee = c("A","B","C","A","B","C","A","B","C"),
  Score = c(85,90,78,88,92,80,90,94,82)
)

ggplot(performance, aes(x=Score, fill=Employee)) +
  geom_histogram(alpha=0.7, position="identity", bins=5) +
  labs(title="Employee Monthly Performance Scores - Histogram",
       x="Performance Score", y="Frequency") +
  theme_minimal()
