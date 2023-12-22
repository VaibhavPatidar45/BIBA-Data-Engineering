import csv

with open('Salary_data.csv', 'r') as myfile:
  reader = csv.DictReader(myfile)
  for row in reader:
    print(row)