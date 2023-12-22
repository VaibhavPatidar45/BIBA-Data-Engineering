import calendar

# Create a TextCalendar object
cal = calendar.TextCalendar()

# Display the calendar for a specific month
cal_for_january = cal.formatmonth(2023, 1)
print("Calendar for January 2023:")
print(cal_for_january)

# Check if a year is a leap year
is_leap_year = calendar.isleap(2023)
print("Is 2023 a leap year?", is_leap_year)

# Get the names of weekdays
weekday_names = calendar.day_name
print("Weekday Names:", weekday_names)



'''import calendar

# Display the calendar for a specific month
year = 2023
month = 1
cal_for_january = calendar.month(year, month)
print(f"Calendar for {calendar.month_name[month]} {year}:\n{cal_for_january}")

# Check if a year is a leap year
is_leap_year = calendar.isleap(year)
print(f"Is {year} a leap year? {is_leap_year}")

# Display the names of weekdays
weekday_names = calendar.day_name
print("Weekday Names:", weekday_names)

# Display the calendar for an entire year
cal_for_year = calendar.TextCalendar().formatyear(year)
print(f"Calendar for the year {year}:\n{cal_for_year}")
'''




'''
import calendar 
cal = calendar.month(2023, 4)
print ("Here is the calendar:")
print (cal)
'''