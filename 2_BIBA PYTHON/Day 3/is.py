

# Example 1 :  is operator

x = 78
y = 78
z = x

# Check if x and y reference the same object
if x is y:
    print("x and y refer to the same object.")
else:
    print("x and y do not refer to the same object.")

# Check if x and z reference the same object
if x is z:
    print("x and z refer to the same object.")
else:
    print("x and z do not refer to the same object.")




# Example 2 : is not operator

a = "hello"
b = "world"
c = a

# Check if a and b do not reference the same object
if a is not b:
    print("a and b do not refer to the same object.")
else:
    print("a and b refer to the same object.")

# Check if a and c reference the same object
if a is not c:
    print("a and c do not refer to the same object.")
else:
    print("a and c refer to the same object.")
