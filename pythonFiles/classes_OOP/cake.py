# Cake.py will be a proper constructor letting us specify the values of our object
class Cake:
    # We need a function that can take in, colour, tiers and decorated
    # def _ _ init _ _ (no spaces)
    def __init__(self, colour, tiers, decorated):
        # The colour of THIS object is equal to the colour we are passing in
        self.colour = colour
        self.tiers = tiers
        self.decorated = decorated

    def bake(self):
        print("In the oven now!")

blackForest = Cake("black", 3, True)
chocCake = Cake(123, "lots", None)
print(blackForest.tiers)
print(chocCake.tiers)

# Array of Cake Objects
listCakes = [blackForest, chocCake]
print(listCakes)
for cake in listCakes:
    cake.bake()
    print(cake.colour)

# Exercise - Create a class and constructor of a type of animal of your choice
# Class should have atleast 3 attributes of different data types and 1 method with a simple return 
# Create 2x objects of this constructor, and print off the attributes of the object

# Inbuilt Attribute functions we can use 
# 4 basic functions to: get a value of an attribute, check if has attribute, set an attribute and delete an attribute 
print("===========================================")
cakeColour = getattr(chocCake, 'colour') # Gets the value of a named attr
print(hasattr(chocCake, 'tiers')) # Returning true or false if this object has this attr
setattr(chocCake, 'calories', 12000) # Find the attr of name (or create if there is none) and set the value
delattr(chocCake, 'calories') # Deletes the named attribute from the object 
print(chocCake.calories)