# Load necessary libraries
library(ggplot2)
library(scales)

# Create the data table
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  Click_Through_Rate = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

# Print the data table
print(data)

# Create a Stacked Bar Chart
bar_chart <- ggplot(data, aes(x = Date, y = Page_Views, fill = "Page Views")) +
  geom_bar(stat = "identity") +
  labs(title = "Website Analytics - Stacked Bar Chart", x = "Date", y = "Page Views") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Create a Line Plot
line_plot <- ggplot(data, aes(x = Date, y = Page_Views)) +
  geom_line() +
  geom_point() +
  labs(title = "Website Analytics - Line Plot", x = "Date", y = "Page Views") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Create a Scatter Plot
scatter_plot <- ggplot(data, aes(x = Date, y = Click_Through_Rate)) +
  geom_point() +
  labs(title = "Website Analytics - Scatter Plot", x = "Date", y = "Click-through Rate")

# Create a Pie Plot
pie_chart <- ggplot(data, aes(x = "", y = Page_Views, fill = "Page Views")) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +
  labs(title = "Website Analytics - Pie Chart", x = NULL, y = NULL) +
  theme_void()

# Create a Histogram
histogram <- ggplot(data, aes(x = Page_Views)) +
  geom_histogram(binwidth = 100, fill = "blue", color = "black") +
  labs(title = "Website Analytics - Histogram", x = "Page Views", y = "Frequency")

# Display the plots
print(bar_chart)
print(line_plot)
print(scatter_plot)
print(pie_chart)
print(histogram)
