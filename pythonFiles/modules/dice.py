from random import randint

def dice_roll():
    value = randint(1, 6)
    return(value)

def dice_roll_size(size):
    # A dice MUST be a even number 
    if size % 2 == 0:
        if size <= 20:
            value = randint(1, size)
            return(value)
    return "Enter an even number between 2 and 20"
