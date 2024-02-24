import pandas as pd
import matplotlib.pyplot as plt
from statsmodels.graphics.mosaicplot import mosaic

data = {
    'SCHOOL': ['A', 'A', 'A', 'B', 'B', 'B', 'C', 'C', 'C', 'D', 'D', 'D'],
    'GRADE LEVEL': ['Grade 1', 'Grade 2', 'Grade 3'] * 4,
    'NUMBER OF STUDENTS': [25, 30, 20, 22, 28, 18, 20, 25, 15, 28, 32, 24]
}


df = pd.DataFrame(data)


mosaic(df, ['SCHOOL', 'GRADE LEVEL'], title='Number of Students by School and Grade Level')


plt.annotate('Efficient', (0.15, 0.3), color='green')
plt.annotate('Inefficient', (0.65, 0.3), color='red')

plt.show()
