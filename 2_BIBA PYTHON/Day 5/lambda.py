'''
# Example 1: Basic Lambda Function

# Lambda function to add two numbers
add = lambda x, y: x + y

result = add(5, 3)
print("Result of add lambda function:", result)

'''

'''
# Example 2: Lambda Function as an Argument

# List of numbers
numbers = [1, 2, 3, 4, 5]

# Use lambda function to square each number in the list
squared_numbers = list(map(lambda x: x**2, numbers))

print("Original Numbers:", numbers)
print("Squared Numbers:", squared_numbers)
'''

'''
# Example 3: Lambda Function in Sorting

# List of tuples (name, age)
people = [('Alice', 30), ('Bob', 25), ('Charlie', 35)]

# Sort the list based on the second element (age) using a lambda function
sorted_people = sorted(people, key=lambda x: x[1])

print("Sorted People:", sorted_people)
'''


# Example 4: Lambda Function in Filter

# List of numbers
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Use lambda function to filter even numbers
even_numbers = list(filter(lambda x: x % 2 == 0, numbers))

print("Original Numbers:", numbers)
print("Even Numbers:", even_numbers)
