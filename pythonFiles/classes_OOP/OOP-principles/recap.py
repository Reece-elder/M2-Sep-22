# Create a constructor to make a new lizard 

class Lizard:
    # Within my class we need to create our constructor 
    def __init__(self, name, colour, age):
        # The name of the OBJECT is equal to the variable we are passing 
        self.name = name
        self.colour = colour
        self.age = age


# What do I need to do to create a lizard object?
# Within Python there is no 'easy' way of accessing the value of the name of the variable
lizard1 = Lizard("percy", "white", 7)
toni = Lizard("Toni", "white", 7)
# l = Lizard("") Don't do this! Use a proper reference!

print(lizard1.age)
print(toni.colour)

# I wanted to be more specific and create a snake class
# What do I need to do to tell my snake class its parent is lizard
class Snake(Lizard):
    def __init__(self, name, colour, age, number_of_indiana_jones_killed):
        super().__init__(name, colour, age)
        self.number_of_indiana_jones_killed = number_of_indiana_jones_killed

snake1 = Snake("solid", "camo", "75", 20)
print(snake1.number_of_indiana_jones_killed)