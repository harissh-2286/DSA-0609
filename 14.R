library(ggplot2)
library(reshape2)

survey <- data.frame(
  Category = c("Product Quality","Customer Service","Value for Money"),
  Very_Dissatisfied = c(5,10,8),
  Dissatisfied = c(15,20,12),
  Neutral = c(25,30,28),
  Satisfied = c(35,25,32),
  Very_Satisfied = c(20,15,20)
)

long_survey <- melt(survey, id.vars="Category",
                    variable.name="Rating",
                    value.name="Count")

ggplot(long_survey, aes(x=Category, y=Count, fill=Rating)) +
  geom_bar(stat="identity") +
  labs(title="Customer Satisfaction Survey - Stacked Bar Plot",
       x="Category", y="Number of Responses") +
  theme_minimal()
