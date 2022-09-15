# Inheritence is pulling the attributes and functions from a parent class
# Useful for creating groups of similar objects where you don't want to repeat code

# Parent class
class Bird:
    layEggs = True
    def __init__(self, name, colour):
        self.name = name
        self.colour = colour

    def makeNoise(self):
        return "Caw Caw!"

# Child class, specify within the class (parent class to use)
class Penguin(Bird):
    def __init__(self, name, colour, swimSpeed):
        # super() is referring to the parent class
        # To create a child class you need to create the parent class through the same function
        super().__init__(name, colour) 
        self.swimSpeed = swimSpeed

class Ostrich(Bird):
    def __init__(self, name, colour, runSpeed):
        super().__init__(name, colour) 
        self.runSpeed = runSpeed

pingu = Penguin("Pingu", "Black and white", 23)
olly = Ostrich("Olly", "Beige", 38)
print(pingu.colour)
print(olly.name)
print(pingu.swimSpeed)

# Child class inherits the functions of the parent class
print(pingu.makeNoise())
print(olly.layEggs)

# Exercise using your existing class, either convert it to a parent or child class and inherit
# 1x attribute and 1x function 
# You should have 1x parent class and 2x child classes
# Dog class -> Parent class, child class could be Corgi 