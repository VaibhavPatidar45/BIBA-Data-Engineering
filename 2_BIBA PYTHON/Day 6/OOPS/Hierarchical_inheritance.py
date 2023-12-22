# Base class
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} makes a sound")

# First-level derived classes (hierarchical inheritance)
class Dog(Animal):
    def bark(self):
        print(f"{self.name} barks")

class Cat(Animal):
    def meow(self):
        print(f"{self.name} meows")

class Horse(Animal):
    def neigh(self):
        print(f"{self.name} neighs")

# Creating instances of the first-level derived classes
dog = Dog("Buddy")
cat = Cat("Whiskers")
horse = Horse("Spirit")

# Accessing methods from the base class and the derived classes
print("Dog:")
dog.speak()  # Inherited method from Animal
dog.bark()   # Method specific to the Dog class

print("\nCat:")
cat.speak()  # Inherited method from Animal
cat.meow()   # Method specific to the Cat class

print("\nHorse:")
horse.speak()  # Inherited method from Animal
horse.neigh()  # Method specific to the Horse class
