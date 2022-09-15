# class contains all code to create Objects
# name of class should be Uppercase
class Cake:
    # Attributes are the variables of an object
    colour = "brown" # String 
    tiers = 3 # int
    decorated = True # boolean

    # Is a function that the Cake Object can do
    # To specify this is a function for the OBJECT and not the CLASS
    # We pass in the parameter self
    def bake(self):
        print("In the oven now!")

# Cake() is a function we can run that will create a Cake object
# Python knows this is a class Function due to the content AND Uppercase
choc_cake = Cake() 
print(choc_cake) # cake.class / None / {colour: brown, ...} / 
# choc_cake exists as a reference to data within the Python memory store 
print(choc_cake.colour) # Prints the colour of the cake
choc_cake.bake()        # Runs the bake function