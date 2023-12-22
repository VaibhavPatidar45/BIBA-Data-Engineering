# importing csv module
import csv

file = open('Salary_Data.csv')

header = []
csvreader = csv.reader(file)

header = []
header = next(csvreader)
print(header)  #Only headers will be printed

# Printing the rows of File : 
rows = []
for row in csvreader:
  rows.append(row)
  
print(rows)



  
  
import pandas as pd

data= pd.read_csv("Salary_Data.csv")
print(data)