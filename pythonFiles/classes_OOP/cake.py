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
print(blackForest.tiers)

# Exercise - Create a class and constructor of a type of animal of your choice
# Class should have atleast 3 attributes of different data types and 1 method with a simple return 
# Create 2x objects of this constructor, and print off the attributes of the object