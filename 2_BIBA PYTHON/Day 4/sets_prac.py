

# CREATING A SET : 
myName = {'v','a','i','b','h','a','v'}
print("Our New SET is : ",myName)

# ADDING A NEW ELEMENT IN SET USING ADD() FUNCTION :
myName.add('p')
print("New Element Added, New set is : ",myName);

# REMOVING ELEMENT FROM SET USING REMOVE() METHODS : 
myName.remove('a');
print("Updated Set is : ",myName);




# DISCARDING ELEMENT FROM SET USING DISCARD() METHOD :
myName.discard('p')
print("Updated Set after discarding : ",myName)

# USING POP() ON OUR SET : 
poped_element = myName.pop()
print("Popped Element is : ",poped_element)
print("Updated SET after pop : ",myName)

# CLEARING SET USING CLEAR() FUNCTION : 
myName.clear()
print("SET CLeared : ",myName)






'''

# Finding Differences of Sets in Python
set1 = set()
set2 = set()
 
for i in range(5):
    set1.add(i)
 
for i in range(3,9):
    set2.add(i)
 
# Difference of two sets using difference() function
set3 = set1.difference(set2)
 
print(" Difference of two sets using difference() function")
print(set3)
 
# Difference of two sets using '-' operator
set3 = set1 - set2
 
print("\nDifference of two sets using '-' operator")
print(set3)

'''


'''
# Clearing Python Sets 
set1 = {1,2,3,4,5,6}
 
print("Initial set")
print(set1)
 
# clear() function remove all the elements of the set
set1.clear()
 
print("\nSet after using clear() function")
print(set1)
'''

'''
# ADDING ELEMENT TO AN EMPTY SET

PYT = set()
PYT.add('s')
print("Letters are:", PYT)
 
# adding 'e' again
PYT.add('e')
print("Letters are:", PYT)

# adding 's' again
PYT.add('P')
print("Letters are:", PYT)
'''


'''
# ADDING ELEMENTS TO AN EXISTING SET
mySet = {'v', 'p', 'j'}
 
# adding 's'
mySet.add('s')
print("Letters are:", mySet)
 
# adding 's' again
mySet.add('s')
print("Letters are:", mySet)
'''


'''
# ADDING A TUPLE & LIST TO A SET
new_set = {1,2,3,4,5}
new_tuple = (3,5,8)
new_list = [9,10]
print(new_set)

# adding new_tuple to new_set.
new_set.add(new_tuple) 
print(new_set)

# adding new_list to new_set
new_set.update(new_list)
print(new_set)
'''


'''
# PYTHON SET CLEAR() METHOD
set2 = {1, 2, 3, 4}
print(set2);

set2.clear()
print("After clear() on set2:", set2);
'''



'''
# THE COPY() METHOD IN SETS 

mySet = {'a','b','d','c'}
copy_set = mySet.copy()

print(mySet)
print(copy_set)

# SHALLOW COPY : Here, if we add/update any data in copied set, then the original set is not disturbed.
'''


'''
# DISCARD() METHOD FOR SET IN PYTHON
A = {9,8,7,2}
print("Our Set is : ", A)

A.discard(8)
print("New Set is : ",A)

# IF WE DISCARD A VALUE THAT IS NOT PRESENT IN SET, THEN NOTHING WILL BE DISCARDED
'''

'''
# DICARDING A STRING FROM A SET
myset = {'a', 1, "pyt", 2, 'b', 'xyz', "chennai", 8} 
print(myset)
 
myset.discard("pyt")
 
print(myset)

# IF WE TRY TO DICARD A STRING NOT PRESENT IN THE SET, THEN NOTHING WILL CHANGE.
'''

















# def is_prime(n):
#    if n in [2, 3]:
#        return True
#    if (n == 1) or (n % 2 == 0):
#        return False
#    r = 3
#    while r * r <= n:
#        if n % r == 0:
#            return False
#        r += 2
#    return True
# print(is_prime(78), is_prime(79))