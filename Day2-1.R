# Load necessary libraries
library(ggplot2)

# Define the data
months <- rep(c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"), 3)  # Repeat months for multiple years
unemployment <- c(10.7, 9.8, 10.2, 11.2, 15.75, 17.8, 19.4, 25.6, 18.6, 15.6, 26.7, 19.5,
                  11.7, 10.8, 10.2, 12.2, 14.75, 16.8, 18.4, 24.6, 17.6, 16.6, 25.7, 18.6,
                  9.7, 8.8, 9.2, 10.9, 13.75, 15.8, 17.4, 23.6, 16.6, 13.6, 24.9, 17.4)  # Simulated unemployment data for 3 years
economic_condition <- rep(c("Good", "Good", "Good", "Good", "Fair", "Fair", "Good", "Bad", "Fair", "Good", "Bad", "Fair"), 3)  # Repeat economic conditions for multiple years

# Create a time series object
ts_unemployment <- ts(unemployment, start = c(2020, 1), frequency = 12)

# Decompose the time series
decomposed <- decompose(ts_unemployment)

# Plot the decomposition
plot(decomposed)
