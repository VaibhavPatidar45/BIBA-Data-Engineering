import csv

# Adding content to existing file
with open('Students_Data.csv', 'w', newline='') as csvfile:
    data = [{'Name': 'Arvind', 'Score_1': 67, 'Score_2': 80},
         {'Name': 'Bushan', 'Score_1': 54, 'Score_2': 67},
         {'Name': 'Veenita', 'Score_1': 58, 'Score_2': 89}]

fieldnames = ['Name', 'Score_1', 'Score_2'] 
writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

# writing content in the file 
writer.writeheader()
writer.writerows(data)

