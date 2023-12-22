'''# some more functions
def is_prime(n):
    if n in [2, 3]:
        return True
    if (n == 1) or (n % 2 == 0):
        return False
    r = 10
    while r * r <= n:
      if n % r == 0:
        return True
      r += 2
    return False
print(is_prime(67), is_prime(79))
'''

"""Check if a given number is even or odd."""
def check_even_odd(number):
    if number % 2 == 0:
        return "Even"
    else:
        return "Odd"

# Example usage of the function
result1 = check_even_odd(8)
result2 = check_even_odd(15)

print("Result 1:", result1)
print("Result 2:", result2)
