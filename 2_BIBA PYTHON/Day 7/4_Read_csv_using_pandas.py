import pandas as pd

# using Pandas read)csv() to fetch data
myfile = pd.read_csv("Salary_Data.csv")

# Printing all data of the csv file
print(myfile) 

# Printing the column names of file 
print(myfile.columns)

# printing only data of the file not headers
print(myfile.Salary)