# Install and load the necessary libraries
install.packages(c("ggplot2", "tidyr"))
library(ggplot2)
library(tidyr)

# Given data
age_groups <- c("0-10", "11-30", "31-50", "51-80")
dairy <- c(50, 35, 25, 40)
staple_food <- c(30, 45, 55, 40)
high_calorie_food <- c(10, 15, 13, 4)
supplements <- c(10, 5, 7, 16)

# Create a data frame
df <- data.frame(Age_Group = age_groups, Dairy = dairy, Staple_Food = staple_food, High_Calorie_Food = high_calorie_food, Supplements = supplements)

# Reshape the data for plotting using tidyr
df_long <- pivot_longer(df, cols = -Age_Group, names_to = "Food_Type", values_to = "Consumption")

# Scatter Plot
scatter_plot <- ggplot(df_long, aes(x = Age_Group, y = Consumption, color = Food_Type)) +
  geom_point() +
  labs(title = "Scatter Plot - Daily Consumption",
       x = "Age Group",
       y = "Consumption")

# Stacked Bar Chart
stacked_bar_chart <- ggplot(df_long, aes(x = Age_Group, y = Consumption, fill = Food_Type)) +
  geom_bar(stat = "identity") +
  labs(title = "Stacked Bar Chart - Daily Consumption",
       x = "Age Group",
       y = "Consumption") +
  scale_fill_manual(values = c("Dairy" = "red", "Staple_Food" = "blue", "High_Calorie_Food" = "green", "Supplements" = "purple"))

# Line Plot
line_plot <- ggplot(df_long, aes(x = Age_Group, y = Consumption, group = Food_Type, color = Food_Type)) +
  geom_line() +
  labs(title = "Line Plot - Daily Consumption",
       x = "Age Group",
       y = "Consumption")

# Print the plots
print(scatter_plot)
print(stacked_bar_chart)
print(line_plot)
