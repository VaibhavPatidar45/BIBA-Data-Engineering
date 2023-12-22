class Car:
    def __init__(self, make, model, year):
        self.__make = make    # Private attribute
        self.__model = model  # Private attribute
        self.__year = year    # Private attribute
        self.__mileage = 0    # Private attribute

    def get_make(self):
        return self.__make

    def get_model(self):
        return self.__model

    def get_year(self):
        return self.__year

    def get_mileage(self):
        return self.__mileage

    def drive(self, miles):
        if miles > 0:
            self.__mileage += miles
            print(f"Driving {miles} miles.")
        else:
            print("Invalid mileage. Please provide a positive value.")

# Create an instance of the Car class
my_car = Car(make="Toyota", model="Camry", year=2022)

# Accessing attributes using getter methods
print(f"Make: {my_car.get_make()}")
print(f"Model: {my_car.get_model()}")
print(f"Year: {my_car.get_year()}")

# Accessing and updating private attribute through a method
print(f"Mileage: {my_car.get_mileage()}")
my_car.drive(50)
print(f"Updated Mileage: {my_car.get_mileage()}")
