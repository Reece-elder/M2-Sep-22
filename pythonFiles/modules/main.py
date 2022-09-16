# Main will be importing the greeting file and using it within a function
# Importing the greeting file
import greeting
# Importing the hello_world function from greeting
# from pythonFiles.modules.greeting import hello_world
from greeting import * # From the greeting file, import all (*)
from greeting import hello_world # From the greeting file, import hello_world

# callback is when we're passing in a function as a parameter into another function
def print_text(func):
    print(func)

# Using the imported greeting file, and accessing the hello_world function
# Because I havent used () we're returning the ID reference to the function itself
print_text(greeting.hello_world)
print_text(greeting.hello_world("Eryk"))
print_text(hello_world("Test"))

# Exercise - Create a file called dice that has a function that generates a random number between 1 - 6
# Create a separate file called result that rolls 4 dice and adds the result together 
