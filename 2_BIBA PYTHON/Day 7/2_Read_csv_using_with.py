import csv
  
# CREATING AN EMPTY TABLE  
rows = []
with open('Salary_Data.csv', 'r') as myData:
  csvdata = csv.reader(myData)
  header = next(csvdata)
  for row in csvdata:
    rows.append(row)
    
print(header)
print(rows)

















