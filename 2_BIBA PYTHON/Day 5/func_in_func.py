"""Outer function with a nested function."""

def outer_function(x):
    
   
    def inner_function(y):        #Nested function.
        return y * 2
    
    result = inner_function(x)
    return result

# Usage of outer function
output = outer_function(5)
print("Result:", output)
