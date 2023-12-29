# Array Sorting in numpy 
import numpy as np 
  
a = np.array([[1, 4, 2], 
              [9, 7, 0], 
              [0,-1, 5]]) 
  
# sorted array 
print ("SORTED ARRAY :\n", np.sort(a, axis = None)) 
  
# Row-wise Sorted Array : 
print ("Row-wise sorted array:\n",np.sort(a, axis = 1)) 
  
# Sorting Based on algorithm 
print ("Column wise sort by applying merge-sort:\n", 
        np.sort(a, axis = 0, kind = 'mergesort')) 
  
# set alias names for dtypes 
dtypes = [('name', 'S10'), ('birth_year', int), ('age', int)] 
  
# Values to be put in array 
values = [('Vaibhav', 2000, 23), ('Vinayak', 2002, 22),  
           ('Shashank', 1996, 27), ('Nahid', 1999, 24)] 
             
# Creating array 
arr = np.array(values, dtype = dtypes) 

print ("Array sorted by birth year and then age:\n", 
       np.sort(arr, order = ['birth_year', 'age'])) 

print ("\n Array sorted by names:\n", 
       np.sort(arr, order = 'name')) 
              