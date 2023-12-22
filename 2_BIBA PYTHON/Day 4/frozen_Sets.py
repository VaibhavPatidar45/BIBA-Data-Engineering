
# Creating a frozenset
frozen_set = frozenset([1, 2, 3, 4, 5])

# Displaying the frozenset
print("Frozen Set:", frozen_set)

# Attempting to modify a frozenset will result in an error
# frozen_set.add(6)

# Creating another frozensets
another_frozen_set = frozenset([4, 5, 6, 7, 8])


# Intersection of two frozensets
intersection = frozen_set.intersection(another_frozen_set)
print("Intersection:", intersection)

# Union of two frozensets
union = frozen_set.union(another_frozen_set)
print("Union:", union)

# Difference between two frozensets
difference = frozen_set.difference(another_frozen_set)
print("Difference:", difference)

# Check if a frozenset is a subset of another frozenset
is_subset = frozen_set.issubset(another_frozen_set)
print("Is subset:", is_subset)
