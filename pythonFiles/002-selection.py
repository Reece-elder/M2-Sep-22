# Selection / Conditionals 
# if (query) is true... do this thing
# else if not true... do this thing

colour = "red"

if colour == "purple":
    print("Colour is Purple! :) ")
# Else command runs when the if command is false
else: 
    print("Colour is not Purple :( ")

# elif - Else If, if the first query isn't true, is this next query true so on..

yourNumber = int(input('Please enter your number: '))
print(yourNumber)

# If statement to check if number is less than 10, greater than 10 or equal to 10
if yourNumber < 10:
    print("Number is less than 10")
elif yourNumber > 10:
    print("Your number is bigger than 10")
# elif yourNumber == 10:
else:
    print("Your number is equal to 10")

# Logical AND OR + nested if statements
# AND - used when you need 2+ queries to be true
# OR - used when 1 of 2+ queries to be true 

shape = "triangle"
solid = False 

# When writing queries with booleans, no need to enter == True / False
if(shape == "square" and solid == True):
    print("Shape is square AND solid")
# '!=' NOT Equal 
elif(shape != "square" and solid != True):
    print("Shape is not a square and not solid")
elif(solid):
    print("Shape is solid")
elif(not solid):
    print("Shape is not solid ")

# OR - If either query on side of OR is true, run this command
if(shape == "triangle" or solid):
    print("Shape is a triangle and not solid OR shape is solid and not a triangle OR shape is solid AND a triangle ")
    if(shape == "triangle" and solid):
        print("Shape is a triangle and solid")
    elif(shape == "triangle"):
        print("Shape is a triangle and not solid")
    else:
        print("Shape is solid and not a triangle")


