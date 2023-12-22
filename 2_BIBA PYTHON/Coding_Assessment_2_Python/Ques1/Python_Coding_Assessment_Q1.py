''' # COMMENT STARTED (ENDS AT LINE 27) 

# IMPORTING OUR USER DEFINED MODULE
import infoModule

# GETTING DATA FROM THE MODULE 
print(f"Employee with id : {infoModule.emp_id} has {infoModule.experience} years of experience")

# Creating a object of the class 'setSalary' and updating the salary : 
emp_salary = infoModule.setSalary(50000)

# Prinitng the updated salary of employee : 
print(f"{emp_salary.displaySalary()}")



# ----- UPDATING ATTRIBUTE (EXPERIENCE OF EMP) OF MODULE ----- 

infoModule.experience = 8

print(f"Years of Experience are updated for {infoModule.emp_fname}")

print(f"Now, {infoModule.emp_fname} has {infoModule.experience} years of experience")

 # COMMENT END (STARTS AT LINE 1)

'''

# ------ CHANGIN THE NAME OF MODULE -------

import infoModule as empInfoModule

print(f"Employee Name is --> {empInfoModule.emp_fname} {empInfoModule.emp_lname}")
print(f"Years of Experience --> {empInfoModule.experience}")
