# Example of DOCSTRING Function

def evenOdd(x):
    """Function to check if the number is even or odd"""
     
    if (x % 2 == 0):
        print("even")
    else:
        print("odd")
 
 
# using __doc__ keyword to use the docstring.
print(evenOdd.__doc__)