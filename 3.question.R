#a.line
employee_data <- data.frame(
  "Employee ID" = c(1, 2, 3, 4, 5),
  "Department" = c("Sales", "HR", "Marketing", "Sales", "HR"),
  "Years of Service" = c(5, 3, 7, 4, 2),
  "Performance Score" = c(85, 92, 78, 90, 76)
)
ggplot(employee_data, aes(x = Years.of.Service, y = Performance.Score, color = Department)) +
  geom_line(aes(group = Employee.ID)) +
  labs(title = "Employee Performance Trend Over Time",
       x = "Years of Service",
       y = "Performance Score",
       color = "Department") +
  theme_minimal()

#b.bar
employee_data <- data.frame(
  "Employee ID" = c(1, 2, 3, 4, 5),
  "Department" = c("Sales", "HR", "Marketing", "Sales", "HR"),
  "Years of Service" = c(5, 3, 7, 4, 2),
  "Performance Score" = c(85, 92, 78, 90, 76)
)
ggplot(employee_data, aes(x = Department)) +
  geom_bar(fill = "skyblue", color = "black") +
  labs(title = "Distribution of Employees Across Departments",
       x = "Department",
       y = "Number of Employees")

#c.scatter plot
employee_data <- data.frame(
  "Employee ID" = c(1, 2, 3, 4, 5),
  "Department" = c("Sales", "HR", "Marketing", "Sales", "HR"),
  "Years of Service" = c(5, 3, 7, 4, 2),
  "Performance Score" = c(85, 92, 78, 90, 76)
)

ggplot(employee_data, aes(x = Years.of.Service, y = Performance.Score)) +
  geom_point() +
  labs(title = "Correlation between Years of Service and Performance Scores",
       x = "Years of Service",
       y = "Performance Score")

