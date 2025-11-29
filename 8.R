library(ggplot2)

# New dataset with more variation so the violins look natural
scores_group_data <- data.frame(
  Group = c(rep("X", 12), rep("Y", 12)),
  Score = c(
    # Group X scores (more spread, natural shape)
    75, 78, 80, 82, 85, 88, 90, 92, 87, 83, 79, 81,
    
    # Group Y scores (different spread)
    70, 72, 75, 78, 80, 82, 84, 86, 85, 81, 79, 77
  )
)

# Plot violin
ggplot(scores_group_data, aes(x = Group, y = Score, fill = Group)) +
  geom_violin(trim = FALSE) +
  labs(
    title = "Scores by Group",
    x = "Group",
    y = "Score"
  ) +
  theme_minimal()
