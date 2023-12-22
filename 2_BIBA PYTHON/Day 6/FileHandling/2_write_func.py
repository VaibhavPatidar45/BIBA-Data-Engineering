# Open a file in write mode ('w')
with open('example_write.txt', 'w') as file:
    # Write content to the file
    file.write("Hello, this is an example file.\n")
    file.write("It is created using the write() method.\n")
    file.write("File handling in Python is easy and powerful.")

# Open the file in read mode ('r') to verify the written content
with open('example_write.txt', 'r') as file:
    # Read and print the entire content of the file
    content = file.read()
    print("File Content:")
    print(content)
