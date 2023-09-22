-- Add the extra branch
-- INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);

-- finding the branch manager's names
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch    -- LEFT JOIN, RIGHT JOIN
ON employee.emp_id = branch.mgr_id;


SELECT * FROM branch