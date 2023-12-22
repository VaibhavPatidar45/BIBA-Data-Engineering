
text = "Hello, World! Welcome to Python Programming."

# 1. capitalize(): Converts the first character to uppercase
capitalized_text = text.capitalize()
print("1. capitalize():", capitalized_text)

# 2. count(): Returns the number of occurrences of a substring
count_occurrences = text.count('o')
print("2. count('o'):", count_occurrences)

# 3. find(): Returns the lowest index of a substring (or -1 if not found)
index_of_welcome = text.find('Welcome')
print("3. find('Welcome'):", index_of_welcome)

# 4. lower(): Converts all characters to lowercase
lowercase_text = text.lower()
print("4. lower():", lowercase_text)

# 5. upper(): Converts all characters to uppercase
uppercase_text = text.upper()
print("5. upper():", uppercase_text)

# 6. replace(): Replaces a substring with another substring
text_replaced = text.replace('World', 'Universe')
print("6. replace('World', 'Universe'):", text_replaced)

# 7. join(): Joins elements of an iterable (e.g., a list) with a specified string
words = ['This', 'is', 'a', 'list']
joined_text = ' '.join(words)
print("7. join():", joined_text)
