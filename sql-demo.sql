-- SELECT pulls data from <table name>
-- * All columns from <table name> 
--SELECT * FROM contact;
--SELECT company_name, county FROM company;

-- I want to see all contacts who are Accounts Officers 
--SELECT * FROM contact WHERE job_title = 'Accounts Officer';

-- I want to see all contacts ordered by contact_name
--SELECT * FROM contact ORDER BY contact_name DESC;

-- Groups of ordering
--SELECT company_no, contact_code, contact_name FROM contact ORDER BY company_no, job_title;
--SELECT company_no, contact_code, contact_name FROM contact ORDER BY company_no;

-- Use other commands to calculate data
--SELECT * FROM sale;

-- Count all rows in sales, display the data as a column called number_of_sales
--SELECT COUNT(*) AS number_of_sales FROM sale;

-- Add together emp_no, company_no and order_value and display
--SELECT nonsense_number = emp_no + company_no + order_value, DESCRIPTION FROM sale;

-- CRUD Create Read Update Delete
-- Create: Insert
-- Read: Select
-- Update: Update + Set
-- Delete: Delete

SELECT * FROM dept;

INSERT INTO dept (dept_no, dept_name, manager, sales_target) VALUES (6, 'QAA','Stanley Yelants', 7);
INSERT INTO dept VALUES (7, 'QAC','Stanley Yelants 2', 17);

SELECT * FROM dept;

-- Update sets the value of fields based on criteria
UPDATE dept SET sales_target=20, dept_name='QAL' WHERE dept_no = 7;
SELECT * FROM salesperson;
DELETE FROM salesperson where county='Surrey';

-- Primary Key a unique identifier for every record in this table, each item is assigned a primary key
-- Tables can have a foreign key, this is a primary key from another table
-- and is used to make related data
