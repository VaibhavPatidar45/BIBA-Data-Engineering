# Program to use break while printing numbers

for i in range(1, 5): 
    
    # second for loop 
    for j in range(2, 6): 
        
        # break the loop if 
        # j is divisible by i 
        if j%i == 0: 
            break
              
        print(i, " ", j)