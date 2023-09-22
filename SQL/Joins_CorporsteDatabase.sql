-- Add the extra branch
-- INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);
-- finding the branch manager's names
-- checking if all branch managers are in the system
-- checking the manager : employee ratio


-- INNER JOIN
-- the result only shows employees who's employee id and branch id are not null
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch   
ON employee.emp_id = branch.mgr_id;


-- LEFT JOIN
-- the left table is joined by the right table and includes all the rows in the left table no matter what
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch   
ON employee.emp_id = branch.mgr_id;

-- RIGHT  JOIN
-- the right table is joined by the left table and includes all the rows in the right table no matter what
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch   
ON employee.emp_id = branch.mgr_id;

-- CHECK ON FULL OUTTER JOIN