import pandas as pd

# Creating content for the file
header = ['Name', 'Score_1', 'Score_2']
data = [['Nitin', 42, 50], ['Kavita', 56, 67], ['Jayu', 58, 89]]

data = pd.DataFrame(data, columns=header)

# writing 
data.to_csv('Stu_data.csv', index=False)
