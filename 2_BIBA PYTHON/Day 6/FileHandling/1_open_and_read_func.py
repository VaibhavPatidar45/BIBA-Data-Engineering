# Writing content to a file
with open('example.txt', 'w') as file:
    file.write("Hello, this is an example file.\n")
    file.write("It contains multiple lines of text.\n")
    file.write("File handling in Python is powerful.")

# Reading content from the file
with open('example.txt', 'r') as file:
    # Read the entire content of the file
    content = file.read()
    print("File Content:")
    print(content)

# Reading content line by line
with open('example.txt', 'r') as file:
    print("\nFile Content Line by Line:")
    for line in file:
        print(line.strip())  # strip() removes leading and trailing whitespaces, including the newline character
