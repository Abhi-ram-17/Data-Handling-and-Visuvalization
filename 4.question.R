#a.bar chart
library(ggplot2)

product_inventory <- data.frame(
  "Product ID" = c(1, 2, 3, 4, 5),
  "Product Name" = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  "Quantity Available" = c(250, 175, 300, 200, 220)
)

ggplot(product_inventory, aes(x = reorder(Product.Name, Quantity.Available), y = Quantity.Available)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Product Quantity in Inventory",
       x = "Product Name",
       y = "Quantity Available") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#b.stacked bar
library(ggplot2)

product_inventory <- data.frame(
  "Product ID" = c(1, 2, 3, 4, 5),
  "Product Name" = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  "Quantity Available" = c(250, 175, 300, 200, 220)
)

ggplot(product_inventory, aes(x = reorder(Product.Name, Quantity.Available), y = Quantity.Available, fill = Product.Name)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Quantity by Category",
       x = "Product Name",
       y = "Quantity Available") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#c.scatter plot

library(ggplot2)

product_inventory <- data.frame(
  "Product ID" = c(1, 2, 3, 4, 5),
  "Product Name" = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  "Quantity Available" = c(250, 175, 300, 200, 220),
  "Product Price" = c(10, 15, 8, 20, 12)
)

ggplot(product_inventory, aes(x = Product.Price, y = Quantity.Available)) +
  geom_point() +
  labs(title = "Relationship between Product Price and Quantity Available",
       x = "Product Price",
       y = "Quantity Available")
