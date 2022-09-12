# number = int(input("Please enter an integer: "))
# counter = number - 1 

# while counter > 1:
#     number = number * counter
#     counter -= 1

# While Loop 
number = int(input("Please enter a number: "))
counter = 1 
value = 1
while counter <= number:
    value = value * counter
    counter += 1
print(f"Factorial of {number} is {value}")
# 1 * 2 * 3 * 4 * 5 = 120

# For Loop 
value = 1
for x in range(1, number + 1):
    value = value * x
print(f"Factorial of {number} is {value}")


# Investment loop
startValue = 100
goal = 1000
interest = 1.1 # 110%
months = 0
currentValue = startValue

while currentValue <= 1000:
    # Increase current value by interest
    currentValue = currentValue * interest
    months += 1

print(f"Took {months} months to turn {startValue} into {goal}")

