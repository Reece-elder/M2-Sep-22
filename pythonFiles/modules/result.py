from dice import dice_roll, dice_roll_size

def roll_4_dice():
    result = 0
    for x in range(4):
        result += dice_roll()
    return result

print(roll_4_dice())

print(dice_roll_size(12))