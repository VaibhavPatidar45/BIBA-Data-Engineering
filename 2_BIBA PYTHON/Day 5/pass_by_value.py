# Modify the given number.
def modify_number(x):
    print("Inside the function (before modification):", x)
    x = x * 2
    print("Inside the function (after modification):", x)

# Using the function
original_number = 5
print("Outside the function (before function call):", original_number)

modify_number(original_number)

print("Outside the function (after function call):", original_number)
