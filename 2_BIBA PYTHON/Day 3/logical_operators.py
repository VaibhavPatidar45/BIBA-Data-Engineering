
# Example 1: Logical AND (and)
its_rainy = True
has_umbrella = True

if its_rainy and has_umbrella:
    print("You can go outside.")
else:
    print("It's not a good idea to go outside.")


# Example 2: Logical OR (or)
temperature = 28  # in Celsius
is_weekend = False

if temperature >= 25 or is_weekend:
    print("It's a good idea to go for a swim.")
else:
    print("It's not a good idea to go for a swim.")




# Example 3: Logical NOT (not)
tasks = 5

# Check if there are no pending tasks
if not tasks:
    print("All tasks are completed.")
else:
    print("There are tasks pending. Keep working.")

