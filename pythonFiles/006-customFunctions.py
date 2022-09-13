# Python Functions 
# Create a function that prints Hello World
# The function wil ONLY RUN when it is called
def print_hello_world():
    print("Hello World")

# Calling the method
print_hello_world()

# print_hello_world does not return or output any data
print(print_hello_world())

def return_hello_world():
    return "Hello Everyone!"

# This function doesn't do anything as we're not doing anything with the return 
return_hello_world()

# Prints out the data returned by our function
print(return_hello_world())


def fav_colour(colour):
    # outputString is a local variable that contains the parameter we're passing in
    outputString = f"My fav colour is {colour}"
    return outputString

print(fav_colour("purple"))
# Everything we've been working on has been a global variable / data 
# outputString is a variable local to the function, meaning we can't access it
# print(outputString)


# When passing in data to functions we can pass in any type, text, numbers, boolean, other functions
# callback function, when a function is passed in as a parameter to another function

def name_function(firstName, secondName):
    return f"{firstName} {secondName}"

# greet_callback is intending to take in a function
def greet_callback(function):
    return f"Hello {function}, how are you?"

print(greet_callback(name_function("David", "Tennant")))
# 1) name_function returns "David Tennant"
# 2) greet_callback returns Hello David Tennant, how are you
# 3) print prints out the string 