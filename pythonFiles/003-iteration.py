# Iteration - repeating a block of code for ease of development

# While loop
# counter1 = 1
# while counter1 < 10:
#     # Casting our integer into a string for the print function
#     # print("Value of counter: " + str(counter))
#     print(f"Value of counter: {counter1}") # Better way of displaying
#     # To stop a code from running CTRL + C
#     # counter = counter + 1
#     counter1 += 1

# counter2 = 1
# # Won't ever run as counter is never greater than 10
# while counter2 > 10:
#     print(f"Value of counter: {counter2}") # Better way of displaying
#     counter2 += 1

# # Will run infinitely as it is never not true
# # counter3 = 1
# # while counter3 > 0:
# #     print(f"Value of counter: {counter3}") # Better way of displaying
# #     counter3 += 1

# colour = "red"
# while colour != "green":
#     colour = input("Please enter a colour: ")
#     print (f"Current value of colour: {colour}")

# counter1 = 1
# while counter1 < 10:
#     # If counter1 is equal to 7, stop the loop
#     if counter1 == 7:
#         break  

#     print(f"Value of counter: {counter1}") # Better way of displaying
#     counter1 += 1

print(range(3)) # [0, 1, 2], won't work prints off range(0,3)
print(*range(3)) # 0, 1, 2
print(*range(4, 8)) # 4, 5, 6, 7 
print(*range(10, 0, -2)) # 10, 8, 6, 4, 2

for x in range(10):
    print(f"Value of x: {x}")

for y in range(20, 3, -3):
    print(f"value of Y: {y}")

# Exercise - 003 Task Iteration 

