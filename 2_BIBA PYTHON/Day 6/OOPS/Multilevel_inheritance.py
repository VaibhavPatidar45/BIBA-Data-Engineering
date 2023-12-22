# Base class
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} makes a sound")

# Derived class (subclass) inheriting from Animal
class Mammal(Animal):
    def give_birth(self):
        print(f"{self.name} gives birth to live young")

# Further derived class inheriting from Mammal
class Dog(Mammal):
    def bark(self):
        print(f"{self.name} barks")

# Creating an instance of the further derived class
dog = Dog("Buddy")

# Accessing methods from the base and intermediate classes
print("Dog:")
dog.speak()        # Inherited method from Animal
dog.give_birth()   # Inherited method from Mammal
dog.bark()         # Method specific to the Dog class
