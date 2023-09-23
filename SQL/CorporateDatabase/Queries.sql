-- find all employees ordered by salary
SELECT * FROM employee 
ORDER BY salary DESC;

-- find all employees ordered by sex then name
SELECT * FROM employee
ORDER BY sex, first_name;

-- find the first five employees in the table employee
SELECT * FROM employee
LIMIT 5;

-- find the first and last names of all employees

SELECT first_name, last_name FROM employee;

-- fins the forename and surnames ofa ll employees
SELECT first_name AS forename, last_name AS surname FROM employee;

-- find out the different genders
SELECT DISTINCT sex FROM employee;

-- find all male employees
SELECT * FROM employee WHERE sex = "M";

-- Find all employees at branch_id 2
SELECT *
FROM employee
WHERE branch_id = 2;

-- Find all employee's id's and names who were born after 1969
SELECT emp_id, first_name, last_name
FROM employee
WHERE birth_day >= 1970-01-01;

-- Find all female employees at branch 2
SELECT *
FROM employee
WHERE branch_id = 2 AND sex = 'F';

-- Find all employees who are female & born after 1969 or who make over 80000
SELECT *
FROM employee
WHERE (birth_day >= '1970-01-01' AND sex = 'F') OR salary > 80000;

-- Find all employees born between 1970 and 1975
SELECT *
FROM employee
WHERE birth_day BETWEEN '1970-01-01' AND '1975-01-01';

-- Find all employees named Jim, Michael, Johnny or David
SELECT *
FROM employee
WHERE first_name IN ('Jim', 'Michael', 'Johnny', 'David');

SELECT * FROM employee


