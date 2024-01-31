#a.bar chart
library(ggplot2)
library(tidyr)

product_sales <- data.frame(
  "Product ID" = c(1, 2, 3),
  "Product Name" = c("Product A", "Product B", "Product C"),
  "January Sales" = c(2000, 1500, 1200),
  "February Sales" = c(2200, 1800, 1400),
  "March Sales" = c(2400, 1600, 1100)
)

product_sales_long <- pivot_longer(product_sales, cols = starts_with("January"), names_to = "Month", values_to = "Sales")

ggplot(product_sales_long, aes(x = factor(Product.ID), y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Product Sales for the First Quarter",
       x = "Product",
       y = "Sales",
       fill = "Month")

#b.stacked area chart 
library(ggplot2)
library(tidyr)

product_sales <- data.frame(
  "Product ID" = c(1, 2, 3),
  "Product Name" = c("Product A", "Product B", "Product C"),
  "January Sales" = c(2000, 1500, 1200),
  "February Sales" = c(2200, 1800, 1400),
  "March Sales" = c(2400, 1600, 1100)
)

product_sales_long <- pivot_longer(product_sales, cols = starts_with("January"), names_to = "Month", values_to = "Sales")

ggplot(product_sales_long, aes(x = factor(Product.ID), y = Sales, fill = Month)) +
  geom_area(position = "stack") +
  labs(title = "Overall Sales Trend for All Products",
       x = "Product",
       y = "Sales",
       fill = "Month")


#c.table 
library(DT)

product_sales <- data.frame(
  "Product ID" = c(1, 2, 3),
  "Product Name" = c("Product A", "Product B", "Product C"),
  "January Sales" = c(2000, 1500, 1200),
  "February Sales" = c(2200, 1800, 1400),
  "March Sales" = c(2400, 1600, 1100)
)

datatable(product_sales, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))

