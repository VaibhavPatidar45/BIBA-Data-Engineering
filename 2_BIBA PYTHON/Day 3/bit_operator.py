# Example 1 : AND Operator

num1 = 0b1101
num2 = 0b1011

result = num1 & num2

print(f"Binary AND Result: {bin(result)}")



# Example2: OR Operator

feature1 = 0b1100
feature2 = 0b0010

result = feature1 | feature2

print(f"Binary OR Result: {bin(result)}")



# Example 3 : bitwise XOR Operator

state = 0b1101
toggle_mask = 0b0010

result = state ^ toggle_mask

print(f"Binary XOR Result: {bin(result)}")



# Example 4 : NOTOperator

num = 0b1101

result = ~num

print(f"Binary NOT Result: {bin(result)}")



# Example 5 : left shift Operator

num = 0b1101

result = num << 1

print(f"Binary Left Shift Result: {bin(result)}")




# Example 6 : Right shift Operator

num = 0b1101

result = num >> 1

print(f"Binary Right Shift Result: {bin(result)}")


