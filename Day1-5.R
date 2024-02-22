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

# Create Stacked Bar Chart
stacked_bar <- ggplot(data, aes(x = Date)) +
  geom_bar(aes(y = Page_Views, fill = "Page Views"), stat = "identity") +
  geom_bar(aes(y = Click_Through_Rate, fill = "Click-through Rate"), stat = "identity") +
  scale_fill_manual(values = c("Page Views" = "blue", "Click-through Rate" = "green")) +
  labs(title = "Website Traffic Analysis - Stacked Bar Chart", x = "Date", y = "Count") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Create Line Plot
line_plot <- ggplot(data, aes(x = Date)) +
  geom_line(aes(y = Page_Views, color = "Page Views")) +
  geom_line(aes(y = Click_Through_Rate * 100, color = "Click-through Rate")) +
  scale_color_manual(values = c("Page Views" = "blue", "Click-through Rate" = "green")) +
  labs(title = "Website Traffic Analysis - Line Plot", x = "Date", y = "Count/Rate") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Create Scatter Plot
scatter_plot <- ggplot(data, aes(x = Page_Views, y = Click_Through_Rate * 100)) +
  geom_point() +
  labs(title = "Website Traffic Analysis - Scatter Plot", x = "Page Views", y = "Click-through Rate (%)")

# Create Pie Chart
pie_chart <- ggplot(data, aes(x = "", y = Page_Views, fill = factor(Date))) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +
  labs(title = "Website Traffic Analysis - Pie Chart", fill = "Date", y = "Page Views")

# Create Histogram
histogram <- ggplot(data, aes(x = Page_Views)) +
  geom_histogram(binwidth = 100, fill = "blue", color = "black") +
  labs(title = "Website Traffic Analysis - Histogram", x = "Page Views", y = "Frequency")

# Display the plots
print(stacked_bar)
print(line_plot)
print(scatter_plot)
print(pie_chart)
print(histogram)
