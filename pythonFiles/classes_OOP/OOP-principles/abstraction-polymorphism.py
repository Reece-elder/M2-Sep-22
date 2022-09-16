# Abstraction - A class that is 'abstract' cannot be used to create an object
# you cannot instantiate an abstract class into an object 
# Cake tin = class, you can create an object of this type of class
# Recipe = an abstract class, you cannot create an object of this type 

# Purpose of abstraction is when you have a large number of objects to create within 1 team
# Creating an object for monkeys, I want a function for climbing a tree and picking a banana
# for monkey in monkeyList:
#   monkey.funClimb()
# Abstraction ENSURES function names (and sometimes what they return) is universal


# Higher level parent class
# abc - abstract Class, a class should be an abstract class meaning we can't create an object
from abc import ABC, abstractmethod

class Animal(ABC):
    def reproduce(self):
        return "Had a baby!"

    # Declare a function/method is abstract, meaning it has no return
    # but all child classes of this class must create the function and 
    # specify what it does 
    @abstractmethod
    def makeNoise(self):
        pass # Does nothing and doesn't return anything

class Bird(Animal):
    def __init__(self, wingspan, feathers):
        self.wingspan = wingspan
        self.feathers = feathers
    
    def makeNoise(self):
        return "Caw Caw!"

# Seagull is inheriting the makeNoise function from bird 
class Seagull(Bird): 
    def __init__(self, wingspan, feathers, chipsEaten):
        super().__init__(wingspan, feathers)
        self.chipsEaten = chipsEaten

    # Overriding, a child class will use the class specific version of a function over an inherited one
    def makeNoise(self):
        return "*seagull noises*"

seagull1 = Seagull(12, "White", 50) # Child class we can instantiate
bird1 = Bird(22, "Blue") # Parent class we can instantiate
print(seagull1.makeNoise())
# Have some form of upper abstract class we cannot create


# Polymorphism = Many Objects
# Poly - Many
# Morph - Change / Objects
# All objects can share functionality of other objects and essentially be the same
print(seagull1.reproduce()) # reproduce is a function of Animal()
print(bird1.reproduce())

# Exercise - Create an abstract class with 1x abstract method that one of your existing classes inherits
# Within the child class specify / override what the abstract method does