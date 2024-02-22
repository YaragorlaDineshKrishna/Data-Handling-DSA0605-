# Load necessary libraries
library(ggplot2)

# Define the data
year <- c(2019, 2020, 2022, 2023, 2024)
job_sector <- c("IT", "Government Job", "Customer care", "Bank", "Games")
job_seekers_rate <- c(95, 97, 98, 82, 74)  # in percentage
selection_rate <- c(25, 12, 45, 20, 35)     # in percentage

# Create a data frame
df <- data.frame(year, job_sector, job_seekers_rate, selection_rate)

# Reshape the data for plotting
df_long <- reshape2::melt(df, id.vars = c("year", "job_sector"))
names(df_long) <- c("Year", "Job_Sector", "Rate_Type", "Rate")  # Corrected column names

# Plot
ggplot(df_long, aes(x = Job_Sector, y = Rate, fill = factor(Year))) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~Rate_Type, scales = "free_y") +
  labs(title = "Most Common Jobs by State Over 5 Years",
       x = "Job Sector",
       y = "Rate (%)",
       fill = "Year") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
