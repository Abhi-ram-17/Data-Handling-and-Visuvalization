#a.histogram
customer_data <- data.frame(
  "Customer ID" = c(1, 2, 3, 4, 5),
  "Age" = c(25, 30, 35, 28, 40),
  "Satisfaction Score" = c(4, 5, 3, 4, 5)
)

ggplot(customer_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "yellow", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Customer Ages",
       x = "Age",
       y = "Frequency")

#b.pie chart
satisfaction_distribution <- table(customer_data$Satisfaction.Score)

pie(satisfaction_distribution, labels = names(satisfaction_distribution), main = "Overall Satisfaction Distribution")

customer_data <- data.frame(
  "Customer ID" = c(1, 2, 3, 4, 5),
  "Age" = c(25, 30, 35, 28, 40),
  "Satisfaction Score" = c(4, 5, 3, 4, 5)
)

#c.stacked bar chart
customer_data <- data.frame(
  "Customer ID" = c(1, 2, 3, 4, 5),
  "Age" = c(25, 30, 35, 28, 40),
  "Satisfaction Score" = c(4, 5, 3, 4, 5)
)
ggplot(customer_data, aes(x = Age, fill = factor(Satisfaction.Score))) +
  geom_bar() +
  labs(title = "Distribution of Customer Satisfaction Scores by Age Group",
       x = "Age",
       y = "Count",
       fill = "Satisfaction Score")
