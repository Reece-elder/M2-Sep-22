# Unit testing is testing the smallest possible code (unit) in isolation 
# pip install pytest

def test_two_plus_two():
    # 2 + 2 = 4
    # Arrange - getting all resources and variables you need to test
    num1 = 2
    num2 = 2
    result = 0

    # Act - doing the thing you are testing
    result = num1 + num2

    # Assert - Asserting did you get the result you were expecting
    assert result == 4

    # Pytest will look for files that contain 'test_<file name>.py'

def return_red(colour):
    colour = "red"
    return colour

# Best practice with unit testing is to name the test test_<function you are testing>
# When working with test functions, you are rarely calling them directly
def test_return_red():
    # Arrange
    result = ""
    test_colour = "test_colour"
    # Act
    result = return_red(test_colour)
    # Assert
    assert result == "red"


# To test a function from a different file we need to import the file / function 
from sum import *

def test_add_nums():
    # Arrange
    result = 0
    num1 = 5
    num2 = 9
    # Act
    result = add_nums(num1, num2)
    # Assert
    # You want to have to reached the result in a different way than the function we are testing 
    assert result == 14 

    # Exercise - Testing lab