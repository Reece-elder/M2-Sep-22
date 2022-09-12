# Create a comment with a '#' 
# This won't run, its purpose is to explain whats going on

# Python is an interpreted language that reads top to bottom
# print('Will this work?')
# With VSCode highlighting / selecting a line then pressing CTRL + / will comment / uncomment
print('Hello World')
print('Now me!')

# Variables and Data Types 
# Variables - Stand in for data, you can change it to impact or update the program 
# Could everyone in the chat type in a 'type of data' 

# With Python variables you DON'T need to specify the type of data before creating it

# Booleans are case sensitive, True or False
booleanVar = True
floatVar = 1.23
intVar = 100
# Text can be "" '' important to use the same 
# Strings are always "This text contains the string 'purple'"
stringVar = "Some text"
# List of fruits / array 
listVar = ["Mango", "Kiwi", "Banana"]

# At run time Python will understand this is an int
zipZoop = 500
print("=================================")
print(stringVar)
print(floatVar)
print(listVar)

# Inputs - Allow the user to interact with the terminal and enter values 
# Want to use an input to set the value of username
username = input('Please enter Username: ')
favColour = input('Please enter colour: ')
print(username)
print(favColour)

# When using inputs the value is ALWAYS a String
# Unless we use CASTING to change the type of data
favNumber = int(input('Please enter favourite number: '))
newNumber = favNumber + 1
print(newNumber)

# Exercise - Via Bud > Cloud Academy > Guided Task 1 - Python Basics 
