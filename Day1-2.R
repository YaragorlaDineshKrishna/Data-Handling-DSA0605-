# Install and load necessary libraries
install.packages("ggplot2")
library(ggplot2)

# Data
inventory <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity_Available = c(250, 175, 300, 200, 220)
)

# Stacked Bar Chart
bar_chart <- ggplot(inventory, aes(x = Product_Name, y = Quantity_Available, fill = Product_Name)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Inventory - Stacked Bar Chart", x = "Product Name", y = "Quantity Available")

# Line Plot
line_plot <- ggplot(inventory, aes(x = Product_Name, y = Quantity_Available, group = 1)) +
  geom_line() +
  labs(title = "Product Inventory - Line Plot", x = "Product Name", y = "Quantity Available")

# Scatter Plot
scatter_plot <- ggplot(inventory, aes(x = Product_Name, y = Quantity_Available)) +
  geom_point() +
  labs(title = "Product Inventory - Scatter Plot", x = "Product Name", y = "Quantity Available")

# Pie Chart
pie_chart <- ggplot(inventory, aes(x = "", y = Quantity_Available, fill = Product_Name)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "Product Inventory - Pie Chart")

# Histogram
histogram <- ggplot(inventory, aes(x = Quantity_Available)) +
  geom_histogram(binwidth = 50, fill = "blue", color = "black") +
  labs(title = "Product Inventory - Histogram", x = "Quantity Available", y = "Frequency")

# Display the plots
print(bar_chart)
print(line_plot)
print(scatter_plot)
print(pie_chart)
print(histogram)

