"""Generate a personalized greeting for a person."""

def greet_person(name, greeting):
    message = f"{greeting}, {name}!"
    return message

# Usage with positional arguments
result = greet_person("Alice", "Hello")

print(result)
