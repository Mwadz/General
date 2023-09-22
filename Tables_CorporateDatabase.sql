/*markdown
# Creating the Corporate_database
This database is a simple example of a company database.  
## Employee Table
This table contains the following employee information;
 * **emp_id** : the employee's ID number (PRIMARY KEY)
 * **first_name** : employee's first name 
 * **last_name** : employee's last name
 * **birth_day** : employee's birthday date
 * **sex** : employee's sex
 * **salary** : the employee's monthly salary
 * **super_id** : the employee's branch supervisor's ID
 * **branch_id** : the banch ID of the employee's place of work
*/

-- creating employee table
CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE,
  sex VARCHAR(1),
  salary INT,
  super_id INT,
  branch_id INT
);



/*markdown
## Branch Table
This table contains the following branch information;
 * **branch_id** : the ID number of each specific branch (PRIMARY KEY)
 * **branch_name** : the branch's name
 * **mgr_id** : the branch manager's ID number
 * **mgr_start_date** : the date when the branch manager started working for the company <br>
 
 **mgr_id** is a foreign key that references **employee_id**

*/

CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

/*markdown
### Mapping the Foreign Keys to Primary keys
Here, we are making the connection between the foreign keys **branch_id** and **super_id** and the primary keys branch_id in table "branch" and employee_id in the same table(the supervisors are also employees and their supervisor ID is their employee ID still).
*/

ALTER TABLE employee
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id)
ON DELETE SET NULL;

ALTER TABLE employee
ADD FOREIGN KEY(super_id)
REFERENCES employee(emp_id)
ON DELETE SET NULL;

/*markdown
## Client Table
This table contains the following client information;
 * **client_id** : the client's ID
 * **client_name** : the client's name
 * **branch_id** : the ID number of each specific branch (PRIMARY KEY)
 
 **branch_id** is a foreign key in this table, referencing the primary key **branch_id** in the table "branch"

*/

CREATE TABLE client (
  client_id INT PRIMARY KEY,
  client_name VARCHAR(40),
  branch_id INT,
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);

/*markdown
## Works_with Table
This table contains the information on each employee and which client they work with. These are the columns;
 * **emp_id** : the ID number of each employee
 * **client_id** : the client's name
 * **total_sales** : the total number of sales made by the employee to that specific client
 
 The primary keys used in this table are emp_id and client_id. **emp_id** is a foreign key that references **emp_id** of the "employee" table. **client_id** is also a foreign key that references **client_id** of the "client" table. 
*/

CREATE TABLE works_with (
  emp_id INT,
  client_id INT,
  total_sales INT,
  PRIMARY KEY(emp_id, client_id),
  FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON DELETE CASCADE,
  FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);

/*markdown
## Branch_supplier Table
This table contains the information on all the branches and their suppliers. These are the columns;
 * **branch_id** : the ID number of the branch
 * **supplier_name** : the supplier's name
 * **suply_type** : the type of supply

 
 The primary keys used in this table are branch_id and supplier_name. **branch_id** is a foreign key that references **branch_id** of the "branch" table.
*/

CREATE TABLE branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

/*markdown
## Inserting Data into the various tables
*/

/*markdown
### Corporate
*/

INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09');

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

/*markdown
### Scranton
*/

INSERT INTO employee VALUES(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);

/*markdown
### Stamford
*/

INSERT INTO employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

/*markdown
### BRANCH SUPPLIER
*/

INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

/*markdown
### CLIENT
*/

INSERT INTO client VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO client VALUES(401, 'Lackawana Country', 2);
INSERT INTO client VALUES(402, 'FedEx', 3);
INSERT INTO client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO client VALUES(405, 'Times Newspaper', 3);
INSERT INTO client VALUES(406, 'FedEx', 2);

/*markdown
### WORKS_WITH
*/

INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);