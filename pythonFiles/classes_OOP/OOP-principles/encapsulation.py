# Encapsulation - The idea of blocking or restricting access to 
# variables and values that are not needed for this specific object
# Better security practice and less complex objects that are less coupled together 

class BankAccount: 
    # Within my bank account class I can set variables directly
    # If we have private or confidential variable values, they shouldn't be passed via the main process
    # Variables with a leading _underscore SHOULD be private. 
    # Python doesnt do anything to make them private, but by convention they should be private
    _pin = "1234"
    _money = 100

    # Getters and Setters - Design pattern for returning and populating attribute value, 
    # often have some extra functionality (checking the pin)
    
    # Making a function to demonstrate depositing money
    # _pin : object variable, pin: value we are putting in
    # Setter
    def deposit(self, money, pin):
        # If the pin value we pass in is equal to the _pin value of the object
        if(pin == self._pin):
            self._money += money

    # Getter
    def displayMoney(self, pin):
        if(pin == self._pin):
            return self._money

account1 = BankAccount()
account1.deposit(500, "1234") # This is good practice for setting the attribute value 
print(account1._money) # This is bad practice and not encapsulation
print(account1.displayMoney("1234"))

# Exercise - Either using a new class or existing class, add a private variable _varName 
# Use getters and setters to get and set the value, 
# add some conditional query (if age < 100 you dont allow)
