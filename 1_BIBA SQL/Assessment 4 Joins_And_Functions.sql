
/* INNER | RIGHT | LEFT | FULL | NATURAL JOINS  */

CREATE TABLE employee(id INT NOT NULL, name VARCHAR(20), age INT, department VARCHAR(25));

INSERT INTO employee(id, name, age, department) VALUES(1, 'Vaibhav', 23,'Data Science');
INSERT INTO employee(id, name, age, department) VALUES(2, 'Shalin', 26,'Production');
INSERT INTO employee(id, name, age, department) VALUES(3, 'Ankit', 21, 'Development');
INSERT INTO employee(id, name, age, department) VALUES(4, 'Piyush', 18, 'Designing');
INSERT INTO employee(id, name, age, department) VALUES(5, 'Mayank', 24, 'Testing');
INSERT INTO employee(id, name, age, department) VALUES(6, 'MONU', 25, 'Java');
INSERT INTO employee(id, name, age, department) VALUES(7, 'Minakshi', 28, 'Testing');


CREATE TABLE salary(id INT NOT NULL, salary INT);

INSERT INTO salary(id, salary) VALUES(1, 50000);
INSERT INTO salary(id, salary) VALUES(3, 25000);
INSERT INTO salary(id, salary) VALUES(4, 30000);
INSERT INTO salary(id, salary) VALUES(2, 60000);
INSERT INTO salary(id, salary) VALUES(6, 10000);
INSERT INTO salary(id, salary) VALUES(7, 15000);
INSERT INTO salary(id, salary) VALUES(8, 26000);

ALTER TABLE salary ADD age INT; 

SELECT name, age, department, salary FROM employee INNER JOIN salary ON employee.id = salary.id; 

SELECT name, age, department, salary FROM employee RIGHT JOIN salary ON employee.id = salary.id;

SELECT name, age, department, salary FROM employee LEFT JOIN salary on employee.id = salary.id;

SELECT name, age, department, salary FROM employee FULL JOIN salary ON employee.id = salary.id;

SELECT name, age, department, salary FROM employee NATURAL JOIN salary ON employee.id = salary.id;

SELECT * FROM employee;
SELECT * FROM salary;





/* STRING FUNCTIONS IN SQL */

/* ASCII() : Will return the ASCII value of left-most character */
SELECT ASCII('XA'); 

/*  CHAR() : Will return the character corresponding to ascii value  */
SELECT CHAR(58);

/*  LEN() : Will return the length of String    */
SELECT LEN('Vaibhav');

/*  LOWER() : Will convert the string in lowercase   */
SELECT LOWER('VAIBHAV');

/* REPLACE () : Will replace the character of string to other  */
SELECT REPLACE( 'Happy', 'y', 'iness' );

/*  REVERSE() : Will return the reversed string */
SELECT REVERSE ( 'PAID');

/*   STR() : Will convert numberic value to character */
SELECT STR(134.56, 6, 2);

/*  UPPER() : Will convert the string into uppercase  */
SELECT UPPER('patidar');



/*   DATE FUNCTION IN SQL */

/*dateadd() : Will add specified month in the date*/
SELECT dateadd(mm, 3, '2023-05-10');

/*    datediff() : Will return the dateparts between two dates*/
SELECT datediff(year, convert(datetime, '2015-05-06'),  convert (datetime, '2023-01-01'));

/*    datepart() : Will return the specified part of date, here month*/
SELECT datepart(mm,'2023-05-01');

/*    day() : Will return the value of day  */
SELECT day('2018-03-26');

/*   month() : Will return the value of month*/
SELECT month ('2023-04-03');

/*  Year() : Will return the value of year*/
SELECT year ( '2020-06-27');




/*MATHEMATICAL FUNCTIONS*/

SELECT abs(-54);       /*Will return the absolute value*/
SELECT sin(90);        /*Will return the value in radian*/
SELECT cos(30); 
SELECT tan(45); 
SELECT ceiling(99.09); /*Will return the nearest greater value*/
SELECT floor(99.09);   /*Will return the nearest smaller value*/
SELECT exp(2);         /*Will return the exponential value*/
SELECT log(3);         /*Will return the log value*/


CREATE TABLE employee1(empid VARCHAR(10), designation VARCHAR(20), hourrate DECIMAL);

INSERT INTO employee1(empid, designation, hourrate) VALUES('E201', 'Lead', 13.654);
INSERT INTO employee1(empid, designation, hourrate) VALUES('E202', 'Developer', 10.236);
INSERT INTO employee1(empid, designation, hourrate) VALUES('E207', 'Consultant', 15.677);
INSERT INTO employee1(empid, designation, hourrate) VALUES('E250', 'Manager', 20.987);
INSERT INTO employee1(empid, designation, hourrate) VALUES('E261', 'Unit Head', 45.211);


SELECT * FROM employee1;

SELECT empid, 'Hourly Rate' = ROUND(hourrate,2) FROM employee1;


CREATE TABLE marks (name VARCHAR(20), std_marks INT);

INSERT INTO marks (name, std_marks) VALUES('Vaibhav', 85);
INSERT INTO marks (name, std_marks) VALUES('Vishal', 90);
INSERT INTO marks (name, std_marks) VALUES('Ankit', 85);
INSERT INTO marks (name, std_marks) VALUES('Sohail', 95);
INSERT INTO marks (name, std_marks) VALUES('Rajni', 85);
INSERT INTO marks (name, std_marks) VALUES('Sakshi', 90);
INSERT INTO marks (name, std_marks) VALUES('Mayank', 99);

SELECT * FROM marks;


/*RANK FUNCTION*/

/*ROW_NUMBER() : Will assign a row number to each row of table*/
SELECT name, std_marks, ROW_NUMBER() OVER(ORDER BY std_marks DESC) AS RANK FROM marks;


/*RANK() : Will assign same rank to elements having same value*/
SELECT name, std_marks, RANK() OVER(ORDER BY std_marks DESC) AS RANK FROM marks;

/*DENSE_RANK() : Will assign same rank to elements having same value without skiping rank for next element */
SELECT name, std_marks, DENSE_RANK() OVER(ORDER BY std_marks DESC) AS RANK FROM marks;

/*NTILE(n) : Will divide the table into n groups*/
SELECT name, std_marks, NTILE(2) OVER(ORDER BY std_marks DESC) AS ntile_rank FROM marks;



/*SYSTEM FUNCTION*/

SELECT host_id() as 'HOSTID';  /*HOST_ID() : Will return the host id */
SELECT host_name() as 'HOSTNAME'; /*HOST_NAME will return the laptop name*/

SELECT suser_id() as 'SUSERID'; /*SUSER_ID() : Will return the id number of logged in account*/
SELECT user_id() as 'USERID'; /*USER_ID() : Will return the name of the user*/
SELECT db_name() as 'DbName'; /*db_name() will return the name of the database*/





/* AGGREGATE FUNCTIONS  */

/*AVG() : Will return the average of values of a column*/
SELECT 'Average Rate' = avg(hourrate) FROM employee1; 

/*COUNT() : Will return the number of expression following the condition*/
SELECT 'Dist_Rate' = count(DISTINCT hourrate) FROM employee1;

/*MIN() : Will return the minimum value bassed on the condition*/
SELECT 'Min_rate' = min(hourrate) FROM employee1;

/*MAX() : Will return the maximum value based on the condition*/
SELECT 'Max_rate' = max(hourrate) FROM employee1;

/*SUM() : Will return the sum of values from the source specified*/
SELECT 'sum_of_rate' = sum(hourrate) FROM employee1;




/*GROUPING DATA*/ 

CREATE TABLE Sales (ProductID INT,  Category VARCHAR(255), Amount DECIMAL(10, 2), Date DATE);

INSERT INTO Sales VALUES (1, 'Electronics', 500.00, '2023-01-01');
INSERT INTO Sales VALUES (2, 'Clothing', 300.00, '2023-01-01');
INSERT INTO Sales VALUES (1, 'Electronics', 700.00, '2023-01-02');
INSERT INTO Sales VALUES (2, 'Clothing', 200.00, '2023-01-02');
INSERT INTO Sales VALUES (1, 'Electronics', 300.00, '2023-01-03');
INSERT INTO Sales VALUES (2, 'Clothing', 400.00, '2023-01-03');

SELECT * FROM sales;

/*GROUP_BY() : Will group the table based on the condition*/
SELECT Category, SUM(Amount) AS TotalSales FROM Sales GROUP BY Category;



