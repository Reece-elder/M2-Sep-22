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
