import pandas as pd
import plotly.graph_objs as go

data = {
    'Year': [2019, 2020, 2022, 2023, 2024],
    'Browser': ['Chrome', 'Chrome', 'Chrome', 'Chrome', 'Chrome'],
    'Users (Millions)': [22.7, 25.8, 28.7, 30.5, 35.2]
}


df = pd.DataFrame(data)

traces = []
browsers = df['Browser'].unique()
for browser in browsers:
    trace = go.Scatter(
        x=df[df['Browser'] == browser]['Year'],
        y=df[df['Browser'] == browser]['Users (Millions)'],
        mode='lines+markers',
        name=browser
    )
    traces.append(trace)

layout = go.Layout(
    title='Internet Users Over 5 Years by Browser',
    xaxis=dict(title='Year'),
    yaxis=dict(title='Number of Users (Millions)')
)

fig = go.Figure(data=traces, layout=layout)

fig.show()
