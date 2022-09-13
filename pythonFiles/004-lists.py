numbers = [1,3,6,9,12,18]
print(numbers[3])
print(numbers[len(numbers)-1])
print(numbers[-1]) # Looping backwards through an array 
print(numbers[-6])

# Slice an array - Selecting a range of values within that array (by index)
# Slicing lower number is inclusive (include this value), higher number is exclusive (dont include this value)
print(numbers[1:4])

# Modify array values by assinging them new values 
numbers[2] = "six"
print(numbers)

# Check membership within an array using the 'in' command
print("seven" in numbers) # False
print("six" in numbers) # True

colours = ["Maroon", "Teal", "Fuschia"]
for colour in colours:
    print(colour)

for x in numbers:
    print(x)

for char in "Hello World":
    print(char)

shapes = ["square", "triangle", "circle", "square", "square"]
# shapes.remove("square")
print(shapes)

# Removing all instances of a value
while "square" in shapes:
    shapes.remove("square")
    print("Removed Square!")
    print(shapes)

print(shapes)

letters = "a.b.c.d.e.f.g.h"
lettersArray = letters.split(".")
print(lettersArray)

# Array - ordered (indexed), mutable (can be modified), collection of any values 
# Tuple - Same as arrays, but is immutable
# Dictionary - Unordered, mutable collections of key value pairs
# Set - Unordered, mutable, collection of unique values

# Tuple
coloursTuple = ("red", "green", "blue")
print(coloursTuple[1])
# coloursTuple[1] = "teal"

# Dictionary
noises = {"cow": "moo!", "duck": "quack!"}
print(noises)
# print(noises[0]) Won't work as Dicts are not indexed
print(noises["cow"])

# Sets
number_set = {1, 2, 2, 5, 6, 1, 7, 9, 2, 3, 5, 4}
print(number_set)