import pandas as pd

# 1. Read column names of the file
df = pd.read_csv('student_data.csv')
columns = df.columns

print("Column Names:")
print(columns)



# 2. Read the whole data of the file
print("\nWhole Data:")
print(df)



# 3. Apply select and filter methods
# Selecting specific columns
selected_columns = df[['StudentID', 'Name']]

# Filtering students with Grade 'A'
filtered_data = df[df['Grade'] == 'A']

print("\nSelected Columns:")
print(selected_columns)

print("\nFiltered Data (Grade A):")
print(filtered_data)