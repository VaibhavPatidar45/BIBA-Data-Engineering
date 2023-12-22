# Base class
class Animal:
    def __init__(self, name):
        self.name = name

    def speak(self):
        print(f"{self.name} makes a sound")

# First-level derived classes (multiple inheritance)
class Mammal(Animal):
    def give_birth(self):
        print(f"{self.name} gives birth to live young")

class Bird(Animal):
    def lay_eggs(self):
        print(f"{self.name} lays eggs")

# Second-level derived class (multilevel inheritance)
class Bat(Mammal, Bird):
    def fly(self):
        print(f"{self.name} can fly")

# Third-level derived class (single inheritance)
class VampireBat(Bat):
    def suck_blood(self):
        print(f"{self.name} sucks blood")

# Creating an instance of the third-level derived class
vampire_bat = VampireBat("Dracula")

# Accessing methods from all levels of the hierarchy
print("Vampire Bat:")
vampire_bat.speak()       # Inherited method from Animal
vampire_bat.give_birth()  # Inherited method from Mammal
vampire_bat.lay_eggs()    # Inherited method from Bird
vampire_bat.fly()         # Method specific to the Bat class
vampire_bat.suck_blood()  # Method specific to the VampireBat class
