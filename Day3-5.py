import pandas as pd
import matplotlib.pyplot as plt

data = {
    'Year': [2019, 2020, 2022, 2023, 2024],
    'Job Sector': ['IT', 'Government Job', 'Customer care', 'Bank', 'Games'],
    'Job Seekers Rate': [95, 97, 98, 82, 74],
    'Selection Rate': [25, 12, 45, 20, 35]
}

df = pd.DataFrame(data)

df_pivot = df.pivot(index='Year', columns='Job Sector', values=['Job Seekers Rate', 'Selection Rate'])

plt.figure(figsize=(10, 6))

plt.subplot(2, 1, 1)
df_pivot['Job Seekers Rate'].plot(kind='bar', stacked=True)
plt.title('Job Seekers Rate by Job Sector over 5 Years')
plt.xlabel('Year')
plt.ylabel('Job Seekers Rate (%)')

plt.subplot(2, 1, 2)
df_pivot['Selection Rate'].plot(kind='bar', stacked=True)
plt.title('Selection Rate by Job Sector over 5 Years')
plt.xlabel('Year')
plt.ylabel('Selection Rate (%)')

plt.tight_layout()
plt.show()
