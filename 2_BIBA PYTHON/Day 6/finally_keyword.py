def process_data(data_list):
    try:
        for item in data_list:
            # Process each item in the list
            result = 10 / item
            print(f"Result: {result}")
    except ZeroDivisionError:
        print("Error: Cannot divide by zero.")
    finally:
        print("Cleanup: This will always be executed, even if an exception occurs.")

# Example usage
process_data([2, 0, 5])
