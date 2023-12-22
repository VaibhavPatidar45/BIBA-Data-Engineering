# Modifying the given list.

def modify_list(my_list):
    print("Inside func (before modification):", my_list)
    
    # Modifying...
    my_list.append(4)
    
    print("Inside func (after modification):", my_list)

# Using the function
original_list = [1, 2, 3]
print("Outside the func (before function call):", original_list)

modify_list(original_list)

print("Outside the function (after function call):", original_list)
