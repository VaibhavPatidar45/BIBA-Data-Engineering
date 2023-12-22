# EXAMPLE 1 : To print number from 1 to 5
num = 1
while num <= 5:
    print("Num:", num)
    num += 1
else:
    print("Loop completed.")


# EXAMPLE 2 : To Validate the user password
password = ""
while password != "secret":
    password = input("Enter the password: ")
    if password == "secret":
        print("Access granted!")
    else:
        print("Access denied. Try again.")


# EXAMPLE 3 : NESTED WHILE LOOP 

i = 1
while i <= 3:
    print(f"Outer loop iteration {i}")
    j = 1
    while j <= 2:
        print(f"  Inner loop iteration {j}")
        j += 1
        if j == 2:
            break
    i += 1

