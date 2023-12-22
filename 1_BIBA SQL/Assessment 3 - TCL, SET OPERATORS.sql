/*  Creating a Employee table named 'emp' :  */ 
CREATE TABLE emp(id INT NOT NULL, name VARCHAR(20), age INT, address VARCHAR(50), salary INT);


/* Add values in table : */
INSERT INTO emp(id, name, age, address, salary) VALUES(1, 'Ramesh', 25, 'Chennai');
INSERT INTO emp(id, name, age, address, salary) VALUES(2, 'Mahesh', 30, 'Indore');
INSERT INTO emp(id, name, age, address, salary) VALUES(3, 'Vaibhav', 23, 'Mumbai');


/*  Use DELETE and COMMIT Command within TRANSACTION :  */
DELETE FROM emp WHERE age=25;
COMMIT;


/*  Using DELETE & ROLLBACK command : */000 
BEGIN TRANSACTION;
DELETE FROM emp WHERE name='Tanveer';
ROLLBACK;


/*  Creating 2 SAVEPOINTS A & B : */ 
BEGIN TRANSACTION;
UPDATE emp SET address='London' WHERE name='Mahesh';

/* SAVEPOINT A; */
 UPDATE emp SET address='New York' WHERE name='Dinesh';

/* SAVEPOINT B;  */
Now rollback the transaction to savepoint A : 
ROLLBACK TO A;


/* REMOVE THE savepoint A by using RELEASE SAVEPOINT :  */
RELEASE SAVEPOINT A;

************************************************************


/*
SET Operators in SQL 
'UNION', 'INTERSECTION', 'UNION ALL', 'MINUS'
*/


/* Create 2 table emp1 and emp2 for UNION operator :  */
CREATE TABLE emp1(id INT NOT NULL, Name VARCHAR(20), Department VARCHAR(20), Salary INT, Experience INT);
CREATE TABLE emp2(id INT NOT NULL, Name VARCHAR(20), Department VARCHAR(20), Salary INT, Experience INT);

/*  adding data in emp 1 :  */
INSERT INTO emp1(id, name, department, salary, experience) VALUES(1,'Aakash Singh', 'Development', 72000, 2);
INSERT INTO emp1(id, name, department, salary, experience) VALUES(2,'Abhishek Pawar', 'Production', 45000, 1);
INSERT INTO emp1(id, name, department, salary, experience) VALUES(3,'Pranav Deshmukh', 'HR', 59900, 3);
INSERT INTO emp1(id, name, department, salary, experience) VALUES(4,'Shubham Mahale', 'Accounts', 57000, 2);
INSERT INTO emp1(id, name, department, salary, experience) VALUES(5,'Sunil Kulkarni', 'Development', 87000, 3);


/*  Adding data in emp2 :  */
INSERT INTO emp2(id, name, department, salary, experience) VALUES(1, 'Prashant Wagh', 'R&D', 49000, 2);
INSERT INTO emp2(id, name, department, salary, experience) VALUES(2, 'Abhishek Pawar', 'Production', 45000, 1);
INSERT INTO emp2(id, name, department, salary, experience) VALUES(3, 'Gautam Jain', 'Development', 56000, 4);
INSERT INTO emp2(id, name, department, salary, experience) VALUES(4, 'Shubham Mahale', 'Accounts', 57000, 2);
INSERT INTO emp2(id, name, department, salary, experience) VALUES(5, 'Rahul Thakur', 'Production', 76000, 4);


/*  Use the UNION keyword to add both the tables : emp1 & emp2  */
SELECT * FROM emp1 UNION SELECT * FROM emp2;
Using  the UNION ALL command to add data of emp1 & emp2:
SELECT * FROM emp1 UNION ALL SELECT * FROM emp2;


/* Using INTERSECTION COMMAD to print common elements in emp1 and emp2 : */
SELECT * FROM emp1 INTERSECT SELECT * FROM emp2;

*************************************************************

/*  ENTITY INTEGRITY  */
/* Using UNIQUE KEY Constraint to create table with UNIQUE Id and Price  :  */

CREATE TABLE demo1(id INT UNIQUE, name VARCHAR(25), manufacturer VARCHAR(50) UNIQUE, price INT);

INSERT INTO demo1(id, name, manufacturer, price) VALUES(1, 'Airpods Pro', 'Apple.inc', 50000);
INSERT INTO demo1(id, name, manufacturer, price) VALUES(2, 'Iphone 15', 'Samasung', 100000);
INSERT INTO demo1(id, name, manufacturer, price) VALUES(3, 'Moto Edge', 'Motorola', 20000);


/* Using NOT NULL Constraint in Demo table :  */
CREATE TABLE demo2(id INT NOT NULL, name VARCHAR(20), age INT NOT NULL);

INSERT INTO demo2(id, name, age) VALUES(1, 'Vaibhav', 22);
INSERT INTO demo2(id, name, age) VALUES(2, 'Patidar', 25);
INSERT INTO demo2(id, name, age) VALUES(3, 'Yash', 30);


/* Using PRIMARY KEY Constraint to assign primary keys to table demo3 : */
 CREATE TABLE demo3(id INT, name VARCHAR(20), profession VARCHAR(20), PRIMARY KEY(id, name));

INSERT INTO demo3(id, name, profession) VALUES(1,'Vinay', 'Develper');
INSERT INTO demo3(id, name, profession) VALUES(2, 'Sandeep', 'Driver');
INSERT INTO demo3(id, name, profession) VALUES(3, 'Sakshi', 'Student');


/* DOMAIN INTEGRITY */
/*Using DEFAULT CONTSRAINT in our student_result table : */

CREATE TABLE student_result(id INT NOT NULL, marks_obtained INT, passing_marks INT default 33);

INSERT INTO student_result(id, marks_obtained, passing_marks) VALUES(100, 76,33);
INSERT INTO student_result(id, marks_obtained, passing_marks) VALUES(101, 55, 65);
INSERT INTO student_result(id, marks_obtained, passing_marks) VALUES(103, 29, 35);


/* Using CHECK CONSTRAINT to check the values entered in table : */
CREATE TABLE voters_list(id INT NOT NULL, name VARCHAR(20), age INT CHECK(age BETWEEN 18 AND 65));

INSERT INTO voters_list(id, name, age) VALUES(220, 'Ramesh', 47);
INSERT INTO voters_list(id, name, age) VALUES(221, 'Vaibhav', 26);


/* REFRENTIAL INTEGRITY  */
/* Using FORIEGN KEY  constraints to maintain integrity between two tables : */ 

CREATE TABLE departments (department_id INT PRIMARY KEY, department_name VARCHAR(50) NOT NULL);
CREATE TABLE employees (employee_id INT PRIMARY KEY, employee_name VARCHAR(50) NOT NULL, department_id INT, FOREIGN KEY (department_id) REFERENCES departments(department_id));

INSERT INTO departments (department_id, department_name) VALUES(1, 'HR'),(2, 'Finance'),(3, 'IT');
INSERT INTO employees (employee_id, employee_name, department_id) VALUES(101, 'John Doe', 1),(102, 'Jane Smith', 2),(103, 'Bob Johnson', 1);
