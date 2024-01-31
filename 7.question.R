#a.bar chat
library(ggplot2)

customer_demographics <- data.frame(
  "Customer ID" = c(1, 2, 3),
  "Age" = c(28, 35, 42),
  "Gender" = c("Female", "Male", "Female"),
  "Income" = c(50000, 60000, 75000)
)

ggplot(customer_demographics, aes(x = factor(Customer.ID), y = Age, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Distribution of Customer Ages",
       x = "Customer ID",
       y = "Age",
       fill = "Gender")


#b.pie chart 
library(ggplot2)

ggplot(customer_demographics, aes(x = "", fill = Gender)) +
  geom_bar(width = 1, stat = "count") +
  coord_polar(theta = "y") +
  labs(title = "Distribution of Customers by Gender",
       fill = "Gender") +
  theme_void()

#c.TD
library(DT)

datatable(customer_demographics, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))
