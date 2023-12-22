
# perparing content of file : 
header = ['Name', 'M1 Score', 'M2 Score']
data = [['Vaibhav', 62, 80], ['Vinayak', 45, 56], ['Shashank', 85, 98]]

import csv

filename = 'Students_Data.csv'
with open(filename, 'w', newline="") as file:
    csvwriter = csv.writer(file) # 2. create a csvwriter object
    csvwriter.writerow(header) # 4. write the header
    csvwriter.writerows(data) # 5. write the rest of the data
