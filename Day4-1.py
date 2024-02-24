import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
from statsmodels.graphics.mosaicplot import mosaic

# Load the dataset with 'latin1' encoding
file_path = "/content/superstore_final_dataset (1).csv"
data = pd.read_csv(file_path, encoding='latin1')

# Print the first few rows of the loaded data
print(data.head())

# Print the column names in your DataFrame
print(data.columns)

# Bar chart for 'Category' counts
plt.figure(figsize=(12, 6))
bar_chart = sns.countplot(x='Category', data=data)
plt.title('Bar Chart - Category Counts')
plt.xlabel('Category')
plt.ylabel('Count')
plt.xticks(rotation=45)
plt.show()

# Line plot for 'Order_Date' and 'Sales'
plt.figure(figsize=(10, 6))
line_plot = data.groupby('Order_Date')['Sales'].sum().plot(kind='line')
plt.title('Line Plot - Total Sales over Time')
plt.xlabel('Order Date')
plt.ylabel('Total Sales')
plt.xticks(rotation=45)
plt.show()

# Mosaic plot for 'Segment' and 'Region'
plt.figure(figsize=(12, 6))
mosaic_plot = mosaic(data, ['Segment', 'Region'], title='Mosaic Plot - Segment vs Region')
plt.show()

# Box plot for 'Sales' by 'Category'
plt.figure(figsize=(10, 6))
box_plot = sns.boxplot(x='Category', y='Sales', data=data)
plt.title('Box Plot - Sales by Category')
plt.xlabel('Category')
plt.ylabel('Sales')
plt.show()

# Scatter plot for 'Sales' and 'Profit' if both columns exist
if 'Sales' in data.columns and 'Profit' in data.columns:
    plt.figure(figsize=(12, 6))
    scatter_plot = sns.scatterplot(x='Sales', y='Profit', data=data)
    plt.title('Scatter Plot - Sales vs Profit')
    plt.xlabel('Sales')
    plt.ylabel('Profit')
    plt.show()

# Pie chart for 'Segment'
plt.figure(figsize=(8, 8))
pie_chart = data['Segment'].value_counts().plot(kind='pie', autopct='%1.1f%%')
plt.title('Pie Chart - Segment Distribution')
plt.ylabel('')
plt.show()

# Stacked bar chart for 'Category' and 'Sub_Category'
plt.figure(figsize=(12, 6))
stacked_bar_chart = data.groupby(['Category', 'Sub_Category']).size().unstack().plot(kind='bar', stacked=True)
plt.title('Stacked Bar Chart - Category vs Sub-Category Counts')
plt.xlabel('Category')
plt.ylabel('Count')
plt.xticks(rotation=45)
plt.show()

plt.figure(figsize=(10, 6))
sns.barplot(data=data, x='Sales', y='Category', ci=None)
plt.title('Sales by Category')
plt.xlabel('Sales')
plt.ylabel('Category')
plt.show()
