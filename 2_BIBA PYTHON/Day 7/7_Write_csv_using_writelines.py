
# Preparing content to write in new file : 
header = ['Name', 'Score_1', 'Score_2']
data = [['Vaibhav', 62, 80], ['Kavya', 45, 56], ['Hexar', 85, 98]]

filename = 'Student_scores.csv'

with open(filename, 'w') as file:
    for header in header:
        file.write(str(header)+', ')
    file.write('n')
    
    for row in data:
        for x in row:
            file.write(str(x)+', ')
        file.write('n')
