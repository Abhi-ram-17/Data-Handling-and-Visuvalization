# a. Line Chart
library(ggplot2)
employee_performance <- data.frame(
  "Employee ID" = c(1, 2, 3),
  "Department" = c("Sales", "HR", "Marketing"),
  "Years of Service" = c(5, 3, 7),
  "Performance Score" = c(85, 92, 78)
)
ggplot(employee_performance, aes(x = Employee.ID, y = Performance.Score, group = 1)) +
  geom_line(color = "blue", size = 2) +
  labs(title = "Employee Performance Trend",
       x = "Employee ID",
       y = "Performance Score")

# b. Bar Chart

ggplot(employee_performance, aes(x = Department)) +
  geom_bar(stat = "count", fill = "skyblue") +
  labs(title = "Distribution of Employees Across Departments",
       x = "Department",
       y = "Number of Employees")

# c. Table
library(DT)

datatable(employee_performance, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))
