# Install and load necessary libraries
install.packages("plotly")  # Install plotly package if not installed
library(plotly)

# Define the data
year <- c(2019, 2020, 2022, 2023, 2024)
browser <- rep("Chrome", 5)
users <- c(22.7, 25.8, 28.7, 30.5, 35.2)  # in millions

# Create a data frame
df <- data.frame(year, browser, users)

# Create an interactive plot
p <- plot_ly(df, x = ~year, y = ~users, type = 'scatter', mode = 'lines+markers', color = ~browser,
             hoverinfo = 'text',
             text = ~paste("Year: ", year, "<br>",
                           "Browser: ", browser, "<br>",
                           "Users: ", users, "M"),
             name = "Chrome") %>%
  plotly::layout(title = "Internet Users with Different Browsers Over Time",
                 xaxis = list(title = "Year"),
                 yaxis = list(title = "Number of Users (Millions)"))

# Print the plot
p
