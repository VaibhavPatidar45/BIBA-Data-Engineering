# Iterating over a list using a for loop

fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    print(fruit)



# Printing a pattern using a for loop

pattern_size = 5

for i in range(1, pattern_size + 1):
    print("*" * i)





# NESTED FOR LOOP EXAMPLE : 

words = ["apple", "banana", "cherry"]

for word in words:
    print(f"Characters in {word}:")
    for char in word:
        print(char)
