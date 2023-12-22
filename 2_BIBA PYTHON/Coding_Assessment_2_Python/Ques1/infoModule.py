# Creating a Custome module storing the employee info : 

emp_id = 'E207'
emp_fname = 'Vaibhav'
emp_lname = 'Patidar'
experience = 5

def empFullName():
  print(f"Full Name of employee is : {emp_fname} {emp_lname}")
  
# Creating a class to set salary of employee
class setSalary:
  def __init__(self, salary):
    self.salary = salary
    
  def displaySalary(self):
    print(f"{emp_fname} is getting {self.salary}Rs as salary")
    