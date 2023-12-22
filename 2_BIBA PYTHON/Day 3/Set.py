'''
# ADD() FUNCTION 
PYT = set()
PYT.add('s')
print("Letters are:", PYT)
 
# adding 'e' again
PYT.add('e')
print("Letters are:", PYT)
# adding 's' again
PYT.add('s')
print("Letters are:", PYT)

'''

'''
# CLEAR() METHOD 
test_set = {1, 2, 3, 4}
test_set.clear()
print("After clear() on test_set:", test_set)
'''

# DISCARD() METHOD 
numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9}
 
print(numbers)
 
# Deleting 5 from the set
numbers.discard(5)
 
# printing the resultant set
print(numbers)



# DISCARD ()
myset = {'a', 1, "pyt", 2, 'b', 'abc', "Hexware", 8}
 
print(myset)
 
# Deleting a from the set
myset.discard("pyt")
 
# printing the resultant set
print(myset)