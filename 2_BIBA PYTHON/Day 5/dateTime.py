from datetime import datetime, date, time, timedelta

# Get the current date and time
current_datetime = datetime.now()
print("Current Date and Time:", current_datetime)

# Get the current date
current_date = date.today()
print("Current Date:", current_date)

# Get the current time
current_time = datetime.now().time()
print("Current Time:", current_time)

# Create a specific date and time
custom_datetime = datetime(2023, 3, 15, 12, 30, 0)
print("Custom Date and Time:", custom_datetime)

# Perform operations with timedelta
one_day_ago = datetime.now() - timedelta(days=1)
print("One day ago:", one_day_ago)
