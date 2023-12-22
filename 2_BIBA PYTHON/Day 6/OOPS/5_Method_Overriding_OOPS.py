

class Animal:
    def speak(self):
        print("Animal speaks")

class Dog(Animal):
    def speak(self):
        print("Dog barks")

class Cat(Animal):
    def speak(self):
        print("Cat meows")

# Create instances of the classes
animal = Animal()
dog = Dog()
cat = Cat()

# Demonstrate method overriding
print("Animal:")
animal.speak()

print("\nDog:")
dog.speak()

print("\nCat:")
cat.speak()
