num1 = int(input("Please enter first number: "))
num2 = int(input("Please enter second number: "))
print("1. Add +")
print("2. Subtract -")
print("3. Multiply * ")
print("4. Divide /")
print("5. Power p")

calc = input("What calculation do you want to perform (enter the symbol, I.e +, -): ")

if calc == "+":
    sum = num1 + num2
    print(sum)
elif calc == "-":
    sum = num1 - num2
    print(sum)
elif calc == "*":
    sum = num1 * num2
    print(sum)
elif calc == "/":
    sum = num1 / num2
    print(sum)
elif calc == "p":
    sum = num1 ** num2
    print(sum)
else:
    print("invalid operation, try again!")
 
