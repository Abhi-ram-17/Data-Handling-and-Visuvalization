# Product Inventory Data
product_inventory <- data.frame(
  "Product ID" = c(1, 2, 3),
  "Product Name" = c("Product A", "Product B", "Product C"),
  "Quantity Available" = c(250, 175, 300),
  "Price" = c(20, 15, 18)
)

# a. Bar Chart
library(ggplot2)

ggplot(product_inventory, aes(x = factor(Product.ID), y = Quantity.Available, fill = Product.Name)) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product in Inventory",
       x = "Product ID",
       y = "Quantity Available",
       fill = "Product Name")

# b. Stacked Bar Chart
ggplot(product_inventory, aes(x = factor(Product.ID), y = Quantity.Available, fill = factor(Product.ID))) +
  geom_bar(stat = "identity") +
  labs(title = "Quantity of Each Product within Different Product Categories",
       x = "Product ID",
       y = "Quantity Available",
       fill = "Product ID")

# c. Table
library(DT)

datatable(product_inventory, options = list(lengthMenu = c(5, 10, 15), pageLength = 5))
