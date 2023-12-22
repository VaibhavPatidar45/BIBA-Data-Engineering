import numpy as np

# Creating a 1D array
Arr1D = np.array([1, 2, 3, 4, 5])
# print(f"1D Array: {Arr1D}")

# Creating a 2D array (matrix)
Arr2D = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
# print(f"\n2D Array: {Arr2D}")


# ------ APPLYING ARITHEMATIC OPERATIONS -------
MyArr1 = np.array([1,3,2,8])
MyArr2 = np.array([2,1,4,6])

print("\nArray Operations Results are below : ")

# THE SUM OF BOTH Arrays : 
print("Sum:", MyArr1 + MyArr2)

# THE DIFFERENCE OF BOTH ARRAYS :
print("Difference:", MyArr1 - MyArr2)

# THE PRODUCT OF BOTH ARRAYS : 
print("Product:", MyArr1 * MyArr2)

# THE DIVISION OF BOTH ARRAYS : 
print("Division:", MyArr1 / MyArr2)