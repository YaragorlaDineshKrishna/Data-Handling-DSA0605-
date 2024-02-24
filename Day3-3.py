import pandas as pd
import matplotlib.pyplot as plt

data = {
    'Date': ['01/01/2024', '02/01/2024', '03/01/2024', '04/01/2024', '05/01/2024', '06/01/2024'],
    'Station A Temperature': [25.0, 24.5, 26.2, 23.8, 25.5, 23.0],
    'Station A Precipitation': [0.1, 0.0, 0.3, 0.2, 0.1, 0.4],
    'Station B Temperature': [23.5, 22.8, 25.0, 22.5, 24.5, 21.8],
    'Station B Precipitation': [0.2, 0.3, 0.1, 0.0, 0.4, 0.2]
}

df = pd.DataFrame(data)

df['Date'] = pd.to_datetime(df['Date'], format='%d/%m/%Y')

plt.figure(figsize=(10, 6))

plt.plot(df['Date'], df['Station A Temperature'], label='Station A Temperature', color='red')
plt.plot(df['Date'], df['Station B Temperature'], label='Station B Temperature', color='blue')

plt.xlabel('Date')
plt.ylabel('Temperature (°C)')
plt.title('Temperature Variation over Time')
plt.legend()
plt.grid(True)

plt.twinx()
plt.plot(df['Date'], df['Station A Precipitation'], label='Station A Precipitation', linestyle='--', color='orange')
plt.plot(df['Date'], df['Station B Precipitation'], label='Station B Precipitation', linestyle='--', color='green')
plt.ylabel('Precipitation (mm)')
plt.legend(loc='upper right')

plt.show()
