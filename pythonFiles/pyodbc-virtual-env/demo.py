import pyodbc
from pprint import pprint

connection_string = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=DESKTOP-SB94ROJ\SQLEXPRESS01;DATABASE=qacompany;trusted_connection=YES"
conn = pyodbc.connect(connection_string)
cursor = conn.cursor()
cursor.execute("SELECT * FROM region")
data = cursor.fetchall()
# Data is an array, how do I loop

for row in data:
    print(row)

# Modularising our code into functions we can reuse it
def queryDb(query):
    connection_string = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=DESKTOP-SB94ROJ\SQLEXPRESS01;DATABASE=qacompany;trusted_connection=YES"
    conn = pyodbc.connect(connection_string)
    cursor = conn.cursor()
    cursor.execute(query)
    return cursor.fetchall()
    # conn.close() Would close the connection for you



print(queryDb("SELECT * FROM dept"))

data = queryDb("SELECT * FROM employee WHERE last_name='williams'")
# for row in data:
#     print(row)

pprint(data)

# Basic Exception Handling - Exception is an error, something you weren't expecting that can break the code
# When working with external data it is important to handle exceptions, as your interpreter may not know what to do
# If we cannot access the data properly, rather than the program failing, it will just return False 
def queryDBException(query):
    # Try: anything within this block is what you are 'attempting' to do 
    try:
        connection_string = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=DESKTOP-SB94ROJ\SQLEXPRESS01;DATABASE=qacompany;trusted_connection=YES"
        conn = pyodbc.connect(connection_string)
        cursor = conn.cursor()
        cursor.execute(query)
        return cursor.fetchall()
    except:
        return False

data = queryDBException("SELECT * FROM houses")
pprint(data)

# Exercise - Using pyodbc, connect to your database and query the data
# You should ensure you use functions to modularise your code, and your function should include exception handling 
# Stretch goal - Do some research about how to get the except block to print out the error that has happened 

# Using pyodbc OR sqlite you can read data from the database
# Data Manipulation Language: Updating, Deleting and adding data, creating tables and other admin stuff

def dataManipulationQuery(query):
    try:
        connection_string = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=DESKTOP-SB94ROJ\SQLEXPRESS01;DATABASE=qacompany;trusted_connection=YES"
        conn = pyodbc.connect(connection_string)
        cursor = conn.cursor()
        cursor.execute(query)
        # When we are manipulating data generally there is no data to fetch
        # When manipulating data we need to commit the changes before they occur
        conn.commit()
        return True
    # Exceptions are objects, exceptions are bundles of functions and variables and can 
    # inherit values from parent objects
    # All exceptions of any type are children of Exception 
    except Exception as ex:
        # Whatever string data we can extract we will print out
        print("Error: ", ex)
        return False

# dataManipulationQuery("CREATE TABLE birds (bird_id int IDENTITY(1,1) PRIMARY KEY, colour VARCHAR(20));")
print(dataManipulationQuery("INSERT INTO birds(colour) VALUES('Teal');"))
pprint(queryDBException("SELECT * FROM birds"))

# Exercise using pyodbc or sqlite create a table, insert some values into it, delete a value
# Stretch goal - Update a value and use proper function calling formatting 
# If your db isn't working, just write the code and practice with the code 