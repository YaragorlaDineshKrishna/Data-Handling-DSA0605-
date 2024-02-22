# Load necessary libraries
library(ggplot2)

# Define the data
date <- as.Date(c("2024-01-01", "2024-01-02", "2024-01-03", "2024-01-04", "2024-01-05", "2024-01-06"))
temp_station_a <- c(25.0, 24.5, 26.2, 23.8, 25.5, 23.0)
precipitation_station_a <- c(0.1, 0.0, 0.3, 0.2, 0.1, 0.4)
temp_station_b <- c(23.5, 22.8, 25.0, 22.5, 24.5, 21.8)
precipitation_station_b <- c(0.2, 0.3, 0.1, 0.0, 0.4, 0.2)

# Create a data frame
df <- data.frame(date, temp_station_a, precipitation_station_a, temp_station_b, precipitation_station_b)

# Reshape data for plotting
df_long <- reshape2::melt(df, id.vars = "date")

# Create time series plot
ggplot(df_long, aes(x = date, y = value, color = variable)) +
  geom_line() +
  facet_wrap(~variable, scales = "free_y", nrow = 2) +
  labs(title = "Temperature and Precipitation Over Time", x = "Date", y = "Value") +
  theme_minimal()
