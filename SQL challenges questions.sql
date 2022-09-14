-- ----------------------------
-- QUESTION MODULE
-- SQL - End of Week Challenges
-- ----------------------------

USE qacompany;

-- ------------------------
-- SECTION - easy questions
-- ------------------------

-- QUESTION 1
-- List all the columns for all jobs,
-- sorted in ascending order of min_salary

-- +------------+--------------------------+------------+------------+
-- | job_id     | job_title                | min_salary | max_salary |
-- +------------+--------------------------+------------+------------+
-- | PC_CLERK   | Purchase Clerk           | 4000       | 8000       |
-- | SA_REP     | Sales Representative     | 4000       | 13000      |
-- | ST_CLERK   | Stock Clerk              | 4400       | 10500      |
-- | MK_REP     | Marketing Representative | 4490       | 11000      |
-- | AD_ASST    | Administration Assistant | 4500       | 15000      |
-- | AD_CLERK   | Administration Clerk     | 4500       | 12000      |
-- | PC_MGR     | Purchase Manager         | 4600       | 15000      |
-- | AC_CLERK   | Accounts Clerk           | 5000       | 11500      |
-- | FN_CLERK   | Finance Clerk            | 6000       | 11000      |
-- | ST_MGR     | Stock Manager            | 6900       | 12000      |
-- | SH_CLERK   | Shipping Clerk           | 8000       | 12500      |
-- | AC_ACCOUNT | Accountant               | 8500       | 25000      |
-- | AC_MGR     | Accounts Manager         | 10000      | 25000      |
-- | HR_CLERK   | Human Resources Clerk    | 10000      | 15000      |
-- | SA_MGR     | Sales Manager            | 10000      | 20000      |
-- | MK_MGR     | Marketing Manager        | 10500      | 17500      |
-- | FN_MGR     | Finance Manager          | 13000      | 25000      |
-- | IT_PROG    | Programmer               | 15000      | 25000      |
-- | AD_MGR     | Administration Manager   | 20000      | 30000      |
-- | SH_MGR     | Shipping Manager         | 20000      | 25000      |
-- | CO_DIR     | Company Director         | 30000      | 100000     |
-- | HR_MGR     | Human Resources Manager  | 30000      | 50000      |
-- | IT_MGR     | IT Manager               | 40000      | 60000      |
-- | CO_CHAIR   | Company Chairman         | 100000     | 200000     |
-- +------------+--------------------------+------------+------------+

-- QUESTION 2
-- List all the columns for all jobs
-- where the maximum salary for that job is 30000 or above
-- sorted in descending order of the maximum salary

-- +----------+-------------------------+------------+------------+
-- | job_id   | job_title               | min_salary | max_salary |
-- +----------+-------------------------+------------+------------+
-- | CO_CHAIR | Company Chairman        | 100000     | 200000     |
-- | CO_DIR   | Company Director        | 30000      | 100000     |
-- | IT_MGR   | IT Manager              | 40000      | 60000      |
-- | HR_MGR   | Human Resources Manager | 30000      | 50000      |
-- | AD_MGR   | Administration Manager  | 20000      | 30000      |
-- +----------+-------------------------+------------+------------+

-- QUESTION 3
-- List the dept_no, last_name, annual_salary and hire_date
-- of all employees who were hired between 1991-01-01 and 1992-12-31
-- sorted by department number then by last name within each department


-- +---------+-----------+---------------+-------------------------+
-- | dept_no | last_name | annual_salary | hire_date               |
-- +---------+-----------+---------------+-------------------------+
-- | 10      | Flowers   | 10500.00      | 1992-02-06 00:00:00.000 |
-- | 20      | Wise      | 25000.00      | 1991-09-27 00:00:00.000 |
-- | 50      | Acreman   | 18000.00      | 1991-04-16 00:00:00.000 |
-- | 50      | Hadlow    | 16500.00      | 1991-05-21 00:00:00.000 |
-- | 60      | Barnes    | 9800.00       | 1992-09-03 00:00:00.000 |
-- | 80      | Holland   | 8500.00       | 1991-06-06 00:00:00.000 |
-- | 80      | Lambert   | 10200.00      | 1992-01-05 00:00:00.000 |
-- | 90      | Molavi    | 45000.00      | 1992-06-02 00:00:00.000 |
-- | 110     | Klein     | 14200.00      | 1991-11-15 00:00:00.000 |
-- +---------+-----------+---------------+-------------------------+

-- QUESTION 4
-- List the last name of all employees in dept_no 90,
-- together with their monthly salary ('Montly Salary') rounded to 2 decimal places,
-- sorted by highest monthly salary first
-- NB: You can assume that monthly salary is annual salary / 12


-- +-----------+----------------+
-- | last_name | Monthly Salary |
-- +-----------+----------------+
-- | Marsh     | 12500.000000   |
-- | Dambridge | 4166.670000    |
-- | Molavi    | 3750.000000    |
-- +-----------+----------------+

-- QUESTION 5
-- Show the total number of employees

-- +---------------------------+
-- | Total number of employees |
-- +---------------------------+
-- | 71                        |
-- +---------------------------+

-- --------------------------
-- SECTION - medium questions
-- --------------------------

-- QUESTION 6
-- Show the total MONTHLY salary bill
-- for the entire company (every employee's monthly salary added together)
-- rounded to the nearest whole number

-- +-------------------------+
-- | Monthly Total Wage Bill |
-- +-------------------------+
-- | 97870.000000            |
-- +-------------------------+

-- QUESTION 7
-- For each department, show...
-- the dept_name,
-- the city the department is in (hint: this is in the location table),
-- the country_name that the location is in (hint: this is in the country table)
-- and the region_name that the country is in (hint: this is in the region table)
-- ordered by dept_name (ascending)

-- +-----------------+---------------+--------------------------+-------------+
-- | dept_name       | city          | country_name             | region_name |
-- +-----------------+---------------+--------------------------+-------------+
-- | Accounting      | San Francisco | United States of America | Americas    |
-- | Administration  | San Francisco | United States of America | Americas    |
-- | Finance         | San Francisco | United States of America | Americas    |
-- | Human Resources | San Francisco | United States of America | Americas    |
-- | IT              | Brighton      | United Kingdom           | Europe      |
-- | Management      | San Francisco | United States of America | Americas    |
-- | Manufacturing   | Toronto       | Canada                   | Americas    |
-- | Marketing       | Gloucester    | United Kingdom           | Europe      |
-- | Sales           | San Antone    | United States of America | Americas    |
-- | Shipping        | Toronto       | Canada                   | Americas    |
-- +-----------------+---------------+--------------------------+-------------+

-- QUESTION 8
-- List the employee_no, last_name, first_name, job_title and hire_date
-- of all employees
-- who's job_title is 'Programmer'
-- and who were hired before 1991-07-01,
-- sorted in ascending order of last name


-- +-------------+-----------+------------+------------+-------------------------+
-- | employee_no | last_name | first_name | job_title  | hire_date               |
-- +-------------+-----------+------------+------------+-------------------------+
-- | 172         | Acreman   | Lucy       | Programmer | 1991-04-16 00:00:00.000 |
-- | 155         | Court     | Peter      | Programmer | 1989-01-04 00:00:00.000 |
-- | 133         | Hadlow    | Nelson     | Programmer | 1991-05-21 00:00:00.000 |
-- | 174         | Monroe    | Justin     | Programmer | 1990-04-02 00:00:00.000 |
-- | 166         | Repetto   | Joanna     | Programmer | 1990-09-30 00:00:00.000 |
-- +-------------+-----------+------------+------------+-------------------------+

-- QUESTION 9
-- List the dept_name, dept_no and the number of employees
-- for each department having 5 or more employees
-- ordered by number of employees (smallest to largest) then dept_name

-- +---------------+---------+-------------------+
-- | dept_name     | dept_no | NumberOfEmployees |
-- +---------------+---------+-------------------+
-- | Accounting    | 30      | 5                 |
-- | Marketing     | 10      | 5                 |
-- | Manufacturing | 190     | 13                |
-- | IT            | 50      | 14                |
-- | Sales         | 60      | 19                |
-- +---------------+---------+-------------------+

-- QUESTION 10
-- List the first_name, last_name and commission_percentage
-- of the employee (or employees) who have the biggest commission_percentage
-- NB: It doesn't matter if the order of your employees listed
-- differs from the answer below, so long as the same employees appear

-- +------------+-----------+--------------------+
-- | first_name | last_name | commission_percent |
-- +------------+-----------+--------------------+
-- | Jayne      | Berry     | 0.30               |
-- | Colin      | Weston    | 0.30               |
-- | Wayne      | Hartmore  | 0.30               |
-- | Tracey     | Hart      | 0.30               |
-- +------------+-----------+--------------------+

-- QUESTION 11
-- We are planning to standardise employees email addresses.
-- Show for each employee...
-- their employee_no, last_name, first_name and
-- new email address under the new scheme.
-- The new format will be:
-- (first four letters of last name) (initial of first name) @ omega.com
-- all lower case. For example, the employee Helen Jones would have
-- a new email address of joneh@omega.com
-- Sort the report by employee_no,
-- but only display the first 5 rows (for brevity)

-- +-------------+-----------+------------+-------------------+
-- | employee_no | last_name | first_name | New Email Address |
-- +-------------+-----------+------------+-------------------+
-- | 100         | Polanski  | David      | polad@omega.com   |
-- | 102         | Molavi    | RiCHARd    | molar@omega.com   |
-- | 107         | Williams  | Megan      | willm@omega.com   |
-- | 110         | Clifford  | William    | clifw@omega.com   |
-- | 112         | Meadows   | Robert     | meadr@omega.com   |
-- +-------------+-----------+------------+-------------------+

-- QUESTION 12
-- Show the list of all distinct job titles held by employees who work
-- in the departments with dept_name 'IT' or 'Sales'
-- ordered by job title

-- +----------------------+
-- | job_title            |
-- +----------------------+
-- | IT Manager           |
-- | Programmer           |
-- | Sales Manager        |
-- | Sales Representative |
-- +----------------------+

-- ------------------------
-- SECTION - hard questions
-- ------------------------

-- QUESTION 13
-- Show the total annual salary bill
-- broken down by department, i.e. for each department show:
-- dept_name,
-- number of employees in that department,
-- total annual salary bill for that department
-- taking into account the annual salary of each employee who works for the department
-- ordered by the most expensive departments first

-- +-----------------+-----------+------------------+
-- | dept_name       | Employees | AnnualSalaryBill |
-- +-----------------+-----------+------------------+
-- | IT              | 14        | 290450.00        |
-- | Management      | 3         | 245000.00        |
-- | Sales           | 19        | 184600.00        |
-- | Manufacturing   | 13        | 114300.00        |
-- | Human Resources | 4         | 79190.00         |
-- | Accounting      | 5         | 68500.00         |
-- | Administration  | 3         | 56500.00         |
-- | Marketing       | 5         | 55900.00         |
-- | Finance         | 3         | 43200.00         |
-- | Shipping        | 2         | 36800.00         |
-- +-----------------+-----------+------------------+

-- QUESTION 14
-- List the department number and department name of all departments
-- where NOBODY with the job with job_title of 'Programmer' works
-- ordered by dept_no
-- NB: This question is NOT the same as asking for the list all departments
-- where somebody works who is not a programmer

-- +---------+-----------------+
-- | dept_no | dept_name       |
-- +---------+-----------------+
-- | 10      | Marketing       |
-- | 20      | Administration  |
-- | 30      | Accounting      |  
-- | 50		 | IT			   |
-- | 60      | Sales           |
-- | 70      | Shipping        |
-- | 80      | Finance         |
-- | 90      | Management      |
-- | 110     | Human Resources |
-- | 190     | Manufacturing   |
-- +---------+-----------------+

-- QUESTION 15
-- We are planning pay rises for some staff, and want to see what the
-- effect would be, without changing any salaries yet.
-- Employees in departments 20 and 10 will get a 5% rise;
-- Employees in departments 50, 80, 90 and 110 will get a 10% rise;
-- Employees in all other departments will get no rise.
-- Select the following information for each employee:
-- employee_no, dept_no, proposed percentage rise,
-- current annual_salary and proposed new annual salary
-- Sorted by dept_no then employee_no

-- +-------------+---------+--------------+------------+---------------------+
-- | employee_no | dept_no | Percent Rise | Old Salary | Proposed New Salary |
-- +-------------+---------+--------------+------------+---------------------+
-- | 100         | 10      | 5            | 17000.00   | 17850.000000        |
-- | 112         | 10      | 5            | 8000.00    | 8400.000000         |
-- | 196         | 10      | 5            | 9500.00    | 9975.000000         |
-- | 260         | 10      | 5            | 10500.00   | 11025.000000        |
-- | 275         | 10      | 5            | 10900.00   | 11445.000000        |
-- | 180         | 20      | 5            | 6500.00    | 6825.000000         |
-- | 200         | 20      | 5            | 25000.00   | 26250.000000        |
-- | 202         | 20      | 5            | 25000.00   | 26250.000000        |
-- | 110         | 30      | 0            | 20000.00   | 20000.000000        |
-- | 115         | 30      | 0            | 7250.00    | 7250.000000         |
-- | 120         | 30      | 0            | 10750.00   | 10750.000000        |
-- | 182         | 30      | 0            | 23000.00   | 23000.000000        |
-- | 205         | 30      | 0            | 7500.00    | 7500.000000         |
-- | 107         | 50      | 10           | 45000.00   | 49500.000000        |
-- | 133         | 50      | 10           | 16500.00   | 18150.000000        |
-- | 149         | 50      | 10           | 22000.00   | 24200.000000        |
-- | 155         | 50      | 10           | 17950.00   | 19745.000000        |
-- | 159         | 50      | 10           | 18000.00   | 19800.000000        |
-- | 166         | 50      | 10           | 16000.00   | 17600.000000        |
-- | 170         | 50      | 10           | 24000.00   | 26400.000000        |
-- | 172         | 50      | 10           | 18000.00   | 19800.000000        |
-- | 174         | 50      | 10           | 17500.00   | 19250.000000        |
-- | 175         | 50      | 10           | 16000.00   | 17600.000000        |
-- | 177         | 50      | 10           | 17500.00   | 19250.000000        |
-- | 214         | 50      | 10           | 22000.00   | 24200.000000        |
-- | 220         | 50      | 10           | 21000.00   | 23100.000000        |
-- | 222         | 50      | 10           | 19000.00   | 20900.000000        |
-- | 119         | 60      | 0            | 10000.00   | 10000.000000        |
-- | 123         | 60      | 0            | 9000.00    | 9000.000000         |
-- | 142         | 60      | 0            | 7000.00    | 7000.000000         |
-- | 143         | 60      | 0            | 8400.00    | 8400.000000         |
-- | 145         | 60      | 0            | 10200.00   | 10200.000000        |
-- | 146         | 60      | 0            | 9100.00    | 9100.000000         |
-- | 147         | 60      | 0            | 12000.00   | 12000.000000        |
-- | 148         | 60      | 0            | 11500.00   | 11500.000000        |
-- | 150         | 60      | 0            | 10000.00   | 10000.000000        |
-- | 152         | 60      | 0            | 9500.00    | 9500.000000         |
-- | 154         | 60      | 0            | 8900.00    | 8900.000000         |
-- | 156         | 60      | 0            | 8100.00    | 8100.000000         |
-- | 169         | 60      | 0            | 7100.00    | 7100.000000         |
-- | 185         | 60      | 0            | 9500.00    | 9500.000000         |
-- | 224         | 60      | 0            | 13000.00   | 13000.000000        |
-- | 236         | 60      | 0            | 9000.00    | 9000.000000         |
-- | 245         | 60      | 0            | 9800.00    | 9800.000000         |
-- | 246         | 60      | 0            | 10500.00   | 10500.000000        |
-- | 255         | 60      | 0            | 12000.00   | 12000.000000        |
-- | 206         | 70      | 0            | 11800.00   | 11800.000000        |
-- | 250         | 70      | 0            | 25000.00   | 25000.000000        |
-- | 125         | 80      | 10           | 24500.00   | 26950.000000        |
-- | 204         | 80      | 10           | 10200.00   | 11220.000000        |
-- | 274         | 80      | 10           | 8500.00    | 9350.000000         |
-- | 102         | 90      | 10           | 45000.00   | 49500.000000        |
-- | 130         | 90      | 10           | 150000.00  | 165000.000000       |
-- | 179         | 90      | 10           | 50000.00   | 55000.000000        |
-- | 122         | 110     | 10           | 35000.00   | 38500.000000        |
-- | 198         | 110     | 10           | 14990.00   | 16489.000000        |
-- | 266         | 110     | 10           | 15000.00   | 16500.000000        |
-- | 267         | 110     | 10           | 14200.00   | 15620.000000        |
-- | 126         | 190     | 0            | 8200.00    | 8200.000000         |
-- | 131         | 190     | 0            | 8000.00    | 8000.000000         |
-- | 132         | 190     | 0            | 8200.00    | 8200.000000         |
-- | 135         | 190     | 0            | 7800.00    | 7800.000000         |
-- | 138         | 190     | 0            | 9500.00    | 9500.000000         |
-- | 139         | 190     | 0            | 7500.00    | 7500.000000         |
-- | 141         | 190     | 0            | 8000.00    | 8000.000000         |
-- | 160         | 190     | 0            | 11000.00   | 11000.000000        |
-- | 195         | 190     | 0            | 6500.00    | 6500.000000         |
-- | 208         | 190     | 0            | 10000.00   | 10000.000000        |
-- | 210         | 190     | 0            | 9800.00    | 9800.000000         |
-- | 212         | 190     | 0            | 10000.00   | 10000.000000        |
-- | 240         | 190     | 0            | 9800.00    | 9800.000000         |
-- +-------------+---------+--------------+------------+---------------------+

-- ------------------------------------------------
-- SECTION - bonus questions (fiendishly difficult)
-- ------------------------------------------------

-- QUESTION 16
-- Show for all cities (from location table)...
-- the name of the city
-- the number of employees working in that city
-- the average annual salary of the employees in that city (rounded to nearest whole number),
-- ordered by cities with most employees first
-- NB: An employee works in a given city if the department
-- they work for is located in that city

-- +---------------+-----------+----------------+
-- | city          | Employees | Average Salary |
-- +---------------+-----------+----------------+
-- | San Antone    | 19        | 9716.000000    |
-- | San Francisco | 18        | 27355.000000   |
-- | Toronto       | 15        | 10073.000000   |
-- | Brighton      | 14        | 20746.000000   |
-- | Gloucester    | 5         | 11180.000000   |
-- +---------------+-----------+----------------+

-- QUESTION 17
-- For each department show...
-- dept_name
-- first_name, last_name and annual_salary
-- of the highest paid employee or employees in that department
-- ordered by dept_name
-- NB: There are two people in Administration who both
-- share the same highest salary in that department

-- +-----------------+------------+-----------+---------------+
-- | dept_name       | first_name | last_name | annual_salary |
-- +-----------------+------------+-----------+---------------+
-- | Accounting      | Florence   | Wilkins   | 23000.00      |
-- | Administration  | Loraine    | Merton    | 25000.00      |
-- | Administration  | Abigail    | Wise      | 25000.00      |
-- | Finance         | Linda      | Yorke     | 24500.00      |
-- | Human Resources | Julie      | Whittaker | 35000.00      |
-- | IT              | Megan      | Williams  | 45000.00      |
-- | Management      | Adrian     | Marsh     | 150000.00     |
-- | Manufacturing   | Trevor     | Mills     | 11000.00      |
-- | Marketing       | David      | Polanski  | 17000.00      |
-- | Sales           | John       | Pench     | 13000.00      |
-- | Shipping        | Tony       | Luigi     | 25000.00      |
-- +-----------------+------------+-----------+---------------+

