# Load necessary libraries
library(ggplot2)

# Create the data table
data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

# Print the data table
print(data)

# Create a Scatter Plot
scatter_plot <- ggplot(data, aes(x = Month, y = Sales)) +
  geom_point() +
  labs(title = "Time Series Analysis - Scatter Plot", x = "Month", y = "Sales ($)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Create a Line Graph
line_graph <- ggplot(data, aes(x = Month, y = Sales)) +
  geom_line() +
  geom_point() +
  labs(title = "Time Series Analysis - Line Graph", x = "Month", y = "Sales ($)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Display the plots
print(scatter_plot)
print(line_graph)
