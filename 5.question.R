#a.line chart

library(ggplot2)

website_analytics <- data.frame(
  "Date" = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  "Page Views" = c(1500, 1600, 1400, 1650, 1800),
  "Click-through Rate" = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

ggplot(website_analytics, aes(x = Date, y = Page.Views)) +
  geom_line() +
  labs(title = "Daily Page Views Trend",
       x = "Date",
       y = "Page Views")

#b.bar chart
top_n_days <- 2  # You can change this to the desired number of top days
top_days <- head(web_data[order(web_data$Click_through_Rate, decreasing = TRUE), ], top_n_days)

barplot(top_days$Click_through_Rate, names.arg = as.character(top_days$Date),
        col = "skyblue", main = "Top N Days with Highest Click-through Rates",
        xlab = "Date", ylab = "Click-through Rate")



#c.stacked area

library(ggplot2)
library(tidyr)

user_interactions_long <- pivot_longer(user_interactions, cols = c("Likes", "Shares", "Comments"), names_to = "Interaction_Type", values_to = "Number_of_Interactions")

ggplot(user_interactions_long, aes(x = Date, y = Number_of_Interactions, fill = Interaction_Type)) +
  geom_area() +
  labs(title = "User Interactions Distribution",
       x = "Date",
       y = "Number of Interactions",
       fill = "Interaction Type")
