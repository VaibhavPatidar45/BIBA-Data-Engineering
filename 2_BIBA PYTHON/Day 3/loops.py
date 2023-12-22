

# PRINTING PRIME NUMBER USING NESTED FOR LOOP : 
 
# Iterate through numbers from 1 to 100
for number in range(1, 101):
    if number < 2:
        continue  # Skip numbers less than 2

    is_prime = True
    for i in range(2, int(number**0.5) + 1):
        if number % i == 0:
            is_prime = False
            break

    if is_prime:
        print(number, end=' ')





print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")







# Nested while loop example: Multiplication table
i = 1

while i <= 5:
    print(f"\nMultiplication table for {i}:\n")
    j = 1

    while j <= 10:
        result = i * j
        print(f"{i} x {j} = {result}")
        j += 1

    i += 1
    
    






# While loop

num = 5
while num > 0:
    print(num)
    num -= 1

print("Acomplished!")



# Validation in while loop

original_password = "xoxo123"
user_input = ""

while user_input != original_password:
    user_input = input("Enter the password: ")

print("Access Now!")


# FFinding Max Nmber from the user input : 

# Guessing a number game 

# FOR LOOPS 

# Pattern using a for loop

pattern_size = 5

for i in range(1, pattern_size + 1):
    print("*" * i)




# Iterating a list using for loop

fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    print(fruit)



# Multiplication Table of a number 

num = int(input("Enter a Number : "));

for i in range(1,11):
  print(f"{num} * {i} = {num*i}")
  
  
  
  
def myFun(x):
  x = 20
 
 
# Driver Code (Note that lst is modified
# after function call.
lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)