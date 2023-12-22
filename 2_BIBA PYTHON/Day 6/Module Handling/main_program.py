# Program for module import
import my_module

# Use functions from the imported module
print(my_module.greet("Vaibhav"))
result = my_module.multiply(43, 14)
print(f"Multiplication result: {result}")

# Importing a specific function from the module
from my_module import greet as custom_greet

# Using the specific function
print(custom_greet("Bob"))
