import numpy as np

# Creating a 1D array :
arr_1d = np.array([1, 2, 3, 4, 5])
print("1D ARRAY : ")
print(arr_1d)

# Creating a 2D array : 
arr_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print("2D ARRAY : ")
print(arr_2d)

# Creatin array with zeroes : 
zeros_arr = np.zeros((3, 4))  # 3 rows, 4 columns
print("ARRAY WITH ZEROES : ")
print(zeros_arr)

# Creating array wit Ones : 
ones_arr = np.ones((2, 3))  # 2 rows, 3 columns
print("ARRAY WITH ONES : ")
print(ones_arr)

# Creating array with a Range : 
range_arr = np.arange(0, 10, 2)  # start at 0, stop before 10, step by 2
print("ARRAY WITH A RANGE : ")
print(range_arr)

# Creating and Identity Matrix : 
identity_matrix = np.eye(3)  # 3x3 identity matrix
print("IDENTITY MATRIX : ")
print(identity_matrix)

# Creating a Random Array : 
random_arr = np.random.rand(2, 3)  # 2x3 array with random values between 0 and 1
print("RANDOM ARRAY : ")
print(random_arr)




