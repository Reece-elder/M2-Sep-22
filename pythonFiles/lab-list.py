ages = [12,18,33,84,45,67,12,82,95,16,10,23,43,29,40,34,30,16,44,69,70,74,38,65,36,83,50,11,7
, 9,64,78,37,3,8,68,22,4,60,33,82,45,23,5,18,28,99,17,81,14,88,50,19,59,7,44,93,35,72,25
,63,11,69,11,76,10,60,30,14,21,82,47,6,21,88,46,78,92,48,36,28,51]

# print(ages)
# print(f"length of array {len(ages)}")

counter = 0
new_array = []
# Appending without removing
for x in ages:
    if x > 16 and x < 65:
        new_array.append(x)

for x in ages:
    if x < 16 or x > 65:
        del ages[counter]
    counter += 1

# print(new_array)
# print(ages)

# Time Calculator 

time1 = input("Please enter the first time in HH:MM:SS ")
time2 = input("Please enter the second time in HH:MM:SS ")
print(time1)
print(time2)

time1_array = time1.split(":")
time2_array = time2.split(":")
print(time1_array, time2_array)

# Adding 2 times requires adding seconds and keeping note of values over 60 
seconds = 0
minutes = 0
hours = 0

seconds = int(time1_array[2]) + int(time2_array[2])
minutes = int(time1_array[1]) + int(time2_array[1])
hours = int(time1_array[0]) + int(time2_array[0])

# Modulus % - 6 % 4 r2
# When dividing two numbers what is the remainder left over 
# 6 / 4 = 1
# 6 % 4 = 2   

if seconds >= 60:
    seconds -= 60
    minutes += 1

if minutes >= 60:
    minutes -= 60
    hours += 1

finalTime = [hours, minutes, seconds]
print(finalTime)

