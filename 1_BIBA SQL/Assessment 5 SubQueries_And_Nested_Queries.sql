/*  JOINS IN SQL   */

CREATE TABLE seniors(id INT,sr_name VARCHAR(25), salary INT);
CREATE TABLE juniors(id INT, jr_name VARCHAR(25), salary INT);

INSERT INTO seniors(id, sr_name, salary) VALUES(1, 'Vishal', 25000), (2,'Ankit', 30000), (3, 'Sonya', 35000), (4, 'Shubham', 180000);

INSERT INTO juniors(id, jr_name, salary) VALUES(2, 'Vaibhav', 30000), (1, 'Mayank', 25000), (3, 'Vinayak', 15000), (5, 'Ishika', 5000);

SELECT * FROM seniors;
SELECT * FROM juniors;

/* EQUI JOIN : Will return the name of seniors having salary equal to juniors*/
SELECT sr_name FROM seniors, juniors WHERE seniors.id = juniors.id;

/*  NON EQUI JOIN : Will return the name of juniors having salary greater then seniors*/
SELECT jr_name FROM seniors, juniors WHERE seniors.salary < juniors.salary;



/*     SQL SUB QUERIES  $ NESTED QUERIES     */

CREATE TABLE  emp(e_id INT, e_name VARCHAR(50), dept VARCHAR(25),  salary INT);

INSERT INTO emp(e_id, e_name, dept, salary) VALUES(1, 'Ram', 'HR', 10000),  			                                    							        (2, 'Amrit', 'MKT', 20000),									        (3, 'Ravi', 'HR', 30000), 
							        (4, 'NITIN','MRKT', 40000), 
						                    (5, 'Varun', 'IT', 50000);

SELECT *FROM  emp;

/*SubQuery01 : Display Maximum Salary*/
SELECT salary FROM emp WHERE salary =  (SELECT MAX(salary) FROM emp);

/*SubQuery02 : Display Employee Name having Maximum Salary*/
SELECT e_name FROM emp WHERE salary = (SELECT MAX(salary) FROM emp);

/*SubQuery03 : Display the secnd highest salart*/
SELECT MAX(salary) FROM emp WHERE salary != (SELECT max(salary) FROM emp);

/*SubQuery04 : Display the name of employee taking 2nd highest salary*/
SELECT e_name FROM emp WHERE salary = (SELECT max(salary) FROM emp WHERE salary != (SELECT max(salary) FROM emp));

/*SubQuery05 : Display the count of employees working in each dpartment*/
SELECT dept, COUNT(*) FROM emp GROUP BY dept;
SELECT* FROM emp;

/*SubQuery06 : Display the departments having less then 2 employee */
SELECT e_name FROM emp WHERE dept IN (SELECT dept FROM emp GROUP BY dept HAVING COUNT(*) < 2);

/*SubQuery07 : Display the highest salary department wise and employee name taking that salary*/
SELECT e_name, dept  FROM emp WHERE salary IN (SELECT MAX(SALARY) FROM emp GROUP BY dept);

/*SubQuery08 : Using Exist to display the info of employee assigned a project*/
CREATE TABLE emp3 (emp_id INT PRIMARY KEY, emp_name VARCHAR(25) , emp_address VARCHAR(25));

CREATE TABLE project(emp_id INT , Pid VARCHAR(25) PRIMARY KEY, Pname VARCHAR(25), Location VARCHAR(25));

INSERT INTO emp3(emp_id, emp_name, emp_address) VALUES(1,'Ravi', 'Chd'), 
                                                                                                          (2, 'Varun', 'Delhi'), 
									(3, 'Nitin', 'Pune'), 
                                                                                                          (4, 'Robin', 'Banglore'), 
									(5, 'Amy', 'Chd');

INSERT INTO project(emp_id, Pid, Pname, Location ) VALUES( 1, 'P1', 'IOT', 'Banglore'), 
                                                                                                     (5, 'P2', 'Big Data', 'Delhi'), 
								       (3, 'P3', 'Retail', 'Mumbai'), 
							                   (4, 'P4', 'Android', 'Hyderabad'); 

SELECT * FROM emp3;
SELECT * FROM project;


SELECT * FROM emp3 WHERE  EXISTS(SELECT emp_id FROM project WHERE emp3.emp_id = project.emp_id);

SELECT * FROM emp3 WHERE NOT EXISTS(SELECT emp_id FROM project WHERE emp3.emp_id = project.emp_id);

/*GROUP BY & ORDER BY CLAUSE */

CREATE TABLE emp_data2(empId INT PRIMARY KEY, empName VARCHAR(25), deptId INT, salary INT, joinYear INT);

INSERT INTO emp_data2(empId, empName, deptId, salary, joinYear) VALUES (1001, 'John', 2, 3000, 2021),                                                                                                                                 (1002, 'Smith', 1, 4000, 2020),
(1003, 'King', 3, 6000, 2019),
(1004, 'Milia', 2, 5500, 2021),
(1005, 'Linda', 2, 3200, 2022),
(1006, 'Tony', 3, 6700, 1990),
(1007, 'Joseph', 1, 7800, 2020),
(1008, 'Alice', 3, 2100, 2021),
(1009, 'Mangu', 2, 2200, 2022),
(1010 ,'David', 1 , 1100, 2022);

SELECT * FROM emp_data2;

SELECT MAX(salary), deptId from emp_data2 GROUP BY deptId; 

SELECT MIN(salary) , deptId FROM emp_data2 GROUP BY deptId;

SELECT AVG(salary), deptId FROM emp_data2 GROUP BY deptId;

SELECT DISTINCT joinYear, COUNT(deptId), deptId FROM emp_data2 GROUP BY deptId, joinYear ORDER BY deptId;

