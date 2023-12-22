def divide_numbers(a, b):
    try:
        result = a / b
        print(f"The result of {a} divided by {b} is: {result}")
    except ZeroDivisionError:
        print("Error: Division by zero is not allowed.")
    except TypeError:
        print("Error: Please provide valid numeric values.")
    else:
        print("Division successful!")
    finally:
        print("This block always executes, whether there was an exception or not.")

# Example 1: Valid division
divide_numbers(10, 2)

# Example 2: Division by zero
divide_numbers(5, 0)

# Example 3: Type error
divide_numbers("a", 2)
