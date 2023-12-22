

# Get user input for the day number
day_number = int(input("Enter the day number (1-7): "))

# Display the weekday name based on the input
if day_number == 1:
    print("Monday")
elif day_number == 2:
    print("Tuesday")
elif day_number == 3:
    print("Wednesday")
elif day_number == 4:
    print("Thursday")
elif day_number == 5:
    print("Friday")
elif day_number == 6:
    print("Saturday")
elif day_number == 7:
    print("Sunday")
else:
    print("Invalid day number. Please enter a number between 1 and 7.")
















# Program to find the day name based on user input :
day_number = int(input("Enter the day number (1-7): "))

if day_number == 1:
    print("Monday")
elif day_number == 2:
    print("Tuesday")
elif day_number == 3:
    print("Wednesday")
elif day_number == 4:
    print("Thursday")
elif day_number == 5:
    print("Friday")
elif day_number == 6:
    print("Saturday")
elif day_number == 7:
    print("Sunday")
else:
    print("Invalid day number. Please enter a number between 1 and 7.")

# Python program to check if a year is a leap year using elif
year = int(input("Enter a year: "))

# Check if it's a leap year
if year % 4 == 0:
    if year % 100 == 0:
        if year % 400 == 0:
            print(f"{year} is a leap year.")
        else:
            print(f"{year} is not a leap year.")
    else:
        print(f"{year} is a leap year.")
else:
    print(f"{year} is not a leap year.")
    
    
    

# Example 1: Checking the grade based on a score
score = float(input("Enter the student's score: "))

# Checking the grade
if score >= 90:
    print("Grade: A")
elif 80 <= score < 90:
    print("Grade: B")
elif 70 <= score < 80:
    print("Grade: C")
elif 60 <= score < 70:
    print("Grade: D")
else:
    print("Grade: F (Fail)")




# Example 2: Categorizing a number as positive, negative, or zero using elif
number = float(input("Enter a number: "))

# Categorize the number
if number > 0:
    print("The number is positive.")
elif number < 0:
    print("The number is negative.")
else:
    print("The number is zero.")




# Example 3: Determining the time based on the hour
hour = int(input("Enter the hour (24-hour format): "))

if 0 <= hour < 6:
    print("Good night!")
elif 6 <= hour < 12:
    print("Good morning!")
elif 12 <= hour < 18:
    print("Good afternoon!")
else:
    print("Good evening!")



    
