import json
import numpy

print(numpy.__version__)
myFile = open('sample_data.json', 'r')
fileData = myFile.read()
finalData = json.loads(fileData)

for a in finalData:
  print(a)
