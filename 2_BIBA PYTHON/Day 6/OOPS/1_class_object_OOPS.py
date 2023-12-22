
'''
# EXAMPLE 1 : CLASS &   OBJECT
class Dog:
    attr1 = "mammal"  #Attribute
 
    def __init__(self, name):     # Instance
        self.name = name


Rodger = Dog("Rodger")
Tommy = Dog("Tommy")
 
# Accessing class attributes
print("Rodger is a {}".format(Rodger.__class__.attr1))
print("Tommy is also a {}".format(Tommy.__class__.attr1))
 
# Accessing instance attributes
print("My name is {}".format(Rodger.name))
print("My name is {}".format(Tommy.name))
'''


# EXAMPLE 2 
class Dog:
    category = "pet"       # class attribute
 
    def __init__(self, name):            # Instance attribute
        self.name = name
         
    def speak(self):
        print(f"My name is {self.name}")
 
# Object instantiation
Rodger = Dog("Rodger")
Tommy = Dog("Tommy")
 
# Accessing class methods
Rodger.speak()
Tommy.speak()

print(Rodger.category)