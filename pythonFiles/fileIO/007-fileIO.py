# Python Input and Output of files
# using python to access the data from an external file (not a python file) 
# as well as adding and appending data to an external file 

# Tell python to open the file we're interested in
# "r" - Read (Default command), "w" - Write, "a" - Append
# Create a file object to assign to the file we're opening
fruit_file = open("fruit.txt", "r")

# Python doesn't like lowerCamelCase
print(fruit_file.readline()) # Reading the first line and printing it out
line = fruit_file.readline() # Reading and saving the next line as a variable 
print(line) # Printing out the 2nd line

# Tell Python to close the file
fruit_file.close()

fruit_file = open("fruit.txt", "r")
# readlines will store all data from the file
lines = fruit_file.readlines()
print(lines)
for line in lines:
    print(line)

# With Python we can edit files and add any text, content to it
# When opening the file if it doesnt exist it is created, if it does exist the current data is wiped
new_file = open("emptyfile.txt", "w")

for x in range(1,11):
    new_line = f"{x}: Hello World \n"
    new_file.write(new_line)

new_file.close()

# Appending doesn't delete existing content, but chucks at end
append_file = open("emptyfile.txt", "a")
append_file.write("New line, this won't replace data")
append_file.close()

# With command - Streamlines the process, runs specific commands 
# with a file and closes them after automatically
with open("emptyfile.txt", "r") as file:
    # Removing line break boundaries, smoothing out the code
    tempfile = file.read().splitlines()
    for line in tempfile:
        print(line)

# Exercise - 007 
# First Exercise - Create a .txt file that contains 7 main colours
# Read the colours and display them line by line using a loop
# Append at the end of the .txt file 7 foods that belong to those colours 
# After each colour, append a new line that is the food of that colour
# Red
# Strawberry
# Orange
# Carrot
# Yellow

# Second exercise - is the guided lab for car sales 


