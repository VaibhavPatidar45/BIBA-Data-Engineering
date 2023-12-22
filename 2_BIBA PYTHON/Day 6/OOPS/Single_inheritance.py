# Base class
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} makes a sound")

# Derived class (subclass) inheriting from Animal
class Dog(Animal):
    def bark(self):
        print(f"{self.name} barks")

# Creating instances of the classes
animal = Animal("Generic Animal")
dog = Dog("Buddy")

# Accessing methods from the base class
print("Animal:")
animal.speak()

# Accessing methods from the derived class
print("\nDog:")
dog.speak()  # Inherited method
dog.bark()   # Method specific to the Dog class
