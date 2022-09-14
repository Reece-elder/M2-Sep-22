# Use pip (package manager to install a package)
# pip install pyodbc

# Tell our python file to use this library
import pyodbc

# To connect to our SQL server we need:
# Driver - ODBC Driver 17 for SQL Server (get this from pyodbc.driver())
# Server Name DESKTOP-SB94ROJ\SQLEXPRESS01 (get this from SQL Server Management Studio)
# Database Name - qacompany
# Authentication type - trusted_connection=YES
#print(pyodbc.drivers()) # Prints the available drivers to use

# All the data and info needed to connect to my DB
connection_string = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=DESKTOP-SB94ROJ\SQLEXPRESS01;DATABASE=qacompany;trusted_connection=YES"

# Creating a connection object, it is equal to pyodbc running the connect function
conn = pyodbc.connect(connection_string)

# Create a cursor object (same as a mouse cursor), which is how we interact with the database
cursor = conn.cursor()

# We are running the SQL query to get data from the job table
cursor.execute("SELECT * FROM job")

# fetchAll grabs all data stored from the query
print(cursor.fetchall())

# Exercise - Use pyodbc to connect to a database of your choice and pull data from a table
# Stretch goal Format this code as a function that takes in a query, and test other SELECT queries
# Further stretch goal - Insert some data using pyodbc