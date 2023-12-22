'''# Function to square a number
def square(x):
    return x ** 2

# List of numbers
numbers = [1, 2, 3, 4, 5]

# Using map() to square each number in the list
squared_numbers = map(square, numbers)

# Converting the result to a list
result_list = list(squared_numbers)

# Displaying the result
print("Original Numbers:", numbers)
print("Squared Numbers:", result_list)

'''

# Define a function that doubles even numbers and leaves odd numbers as is
def double_even(num):
    if num % 2 == 0:
        return num * 2
    else:
        return num
 
# Create a list of numbers to apply the function to
numbers = [1, 2, 3, 4, 5]
 
# Use map to apply the function to each element in the list
result = list(map(double_even, numbers))
 
# Print the result
print(result)  # [1, 4, 3, 8, 5]