# Creating two sets
set_a = {1, 2, 3, 4, 5}
set_b = {3, 4, 5, 6, 7}

# Displaying the original sets
print("Set A:", set_a)
print("Set B:", set_b)

# Union of sets
union_set = set_a.union(set_b)
print("Union of Sets A and B:", union_set)

# Intersection of sets
intersection_set = set_a.intersection(set_b)
print("Intersection of Sets A and B:", intersection_set)

# Difference between sets
difference_set_a_b = set_a.difference(set_b)
difference_set_b_a = set_b.difference(set_a)
print("Difference A - B:", difference_set_a_b)
print("Difference B - A:", difference_set_b_a)

# Clearing a set
set_a.clear()
print("Set A after clear:", set_a)

# Creating a new set
set_c = {1, 2, 3}

# Clearing an empty set has no effect
set_c.clear()
print("Set C after clear:", set_c)
