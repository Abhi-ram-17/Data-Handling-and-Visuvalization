# a. Line Chart
library(ggplot2)
monthly_sales <- data.frame(
  "Month" = c("January", "February", "March", "April", "May"),
  "Sales" = c(15000, 18000, 22000, 20000, 23000)
)
ggplot(monthly_sales, aes(x = Month, y = Sales)) +
  geom_line(color = "blue", size = 2) +
  labs(title = "Monthly Sales",
       x = "Month",
       y = "Sales (in $)")

# b. Bar Chart
monthly_sales <- data.frame(
  "Month" = c("January", "February", "March", "April", "May"),
  "Sales" = c(15000, 18000, 22000, 20000, 23000)
)
ordered_sales <- monthly_sales[order(monthly_sales$Sales, decreasing = TRUE),]

ggplot(ordered_sales, aes(x = Month, y = Sales, fill = Month)) +
  geom_bar(stat = "identity") +
  labs(title = "Top-Selling Products",
       x = "Month",
       y = "Sales (in $)")

# c. Scatter Plot
advertising_budget <- c(5000, 6000, 8000, 7000, 9000)

scatter_data <- data.frame(
  "Month" = monthly_sales$Month,
  "Sales" = monthly_sales$Sales,
  "Advertising Budget" = advertising_budget
)

ggplot(scatter_data, aes(x = Advertising.Budget, y = Sales)) +
  geom_point(color = "green") +
  labs(title = "Relationship between Advertising Budget and Monthly Sales",
       x = "Advertising Budget",
       y = "Sales (in $)")
