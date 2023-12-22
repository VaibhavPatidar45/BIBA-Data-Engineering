import time

# Get the current time in seconds since the epoch
current_time_seconds = time.time()
print("Current Time in Seconds:", current_time_seconds)

# Sleep for 2 seconds
print("Sleeping for 2 seconds...")
time.sleep(2)
print("Awake now!")

# Get the current local time as a struct_time object
current_local_time = time.localtime()
print("Current Local Time:", current_local_time)

# Format time using strftime
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
print("Formatted Time:", formatted_time)
