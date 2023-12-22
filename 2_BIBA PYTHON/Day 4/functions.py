
'''
# DEFENING A GREETING FUNCTION

def greet():
  # Tanking the name as an input
  userName = input("Please Enter Your Name : ")
  # printing the output 
  print("Hello dear, ", userName)

greet()
'''


'''
# DEFINING A FUNCTION THAT DEALS WITH ARGUMENTS

def calculator(a,b):
  print("The Sum of ",a," and ",b, "is", a+b )
  print("The Differernce of ",a," and ",b, "is", a-b )
  print("The Product of ",a," and ",b, "is", a*b )
  print("The Division of ",a," and ",b, "is", a/b )
  
calculator(10,5);
'''


# FUNCTION WITH RETURN STATEMENT 
def factorial_func(num):
  fact = 1
  for i in range(1,num+1):
    fact = fact*i
    i+=1
  return fact

factorial = factorial_func(7)
print("The factorial is :", factorial);