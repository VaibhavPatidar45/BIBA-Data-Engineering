# Base classes
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} makes a sound")

class Mammal:
    def give_birth(self):
        print(f"{self.name} gives birth to live young")

# Derived class (subclass) inheriting from multiple base classes
class Dog(Animal, Mammal):
    def bark(self):
        print(f"{self.name} barks")

# Creating an instance of the derived class
dog = Dog("Buddy")

# Accessing methods from the base classes
print("Dog:")
dog.speak()        # Inherited method from Animal
dog.give_birth()   # Inherited method from Mammal
dog.bark()         # Method specific to the Dog class
