
/*  CREATING A TABLE : CUSTOMERS   */

CREATE TABLE customers
(
Id INT PRIMARY KEY NOT NULL, 
Name VARCHAR(30), 
Address VARCHAR(30) , 
Order_value INT
);

INSERT INTO customers( Id, Name, Address, Order_value) VALUES(1, 'Vaibhav', 'Indore', 5000),
                                                                                                                (2, 'Shashank', 'Vijaya Nagar', 1000), 
																												(3, 'Nancy', 'Chennai', 2000), 
																												(4, 'Vinayak', 'Devas', 3000), 
																												(5, 'Vishal', 'Mhow', 1000), 
																												(6, 'Veenita', 'Chennai', 10000);

SELECT * FROM customers;

/*    CREATING A ITEMS TABLE    */

CREATE TABLE items
(
id INT PRIMARY KEY NOT NULL, 
item_name VARCHAR(20),
Quantity INT,
bill_Status VARCHAR(10)
);

INSERT INTO items(id, item_name, Quantity, bill_status) VALUES(1, 'Chair', 5, 'Paid'),
                                                                                                              (3, 'Table', 1, 'Unpaid'),
																											  (4, 'Window', 3, 'Paid'),
																											  (6, 'Doors', 4, 'Unpaid'),
																											  (7, 'Chair', 3, 'Paid'),
																											  (8, 'Sofa', 1, 'Unpaid'),
																											  (9, 'Dinning Table', 1, 'Paid');

SELECT * FROM items;


/*   APPLYING INNER JOIN ON CUSTOMERS AND ITEMS TABLE    */

SELECT  Name, Order_value, item_name, bill_status 
FROM customers 
INNER JOIN 
items ON customers.id = items.id;

/* COMMON ENTERIES FROM BOTH THE TABLE IS DISPLAYED */



/*   APPLYING RIGHT JOIN ON CUSTOMERS AND ITEMS TABLE    */

SELECT Name, Address, Order_value, item_name, bill_status 
FROM customers 
RIGHT JOIN 
items ON customers.id = items.id;

/*  ALL THE ENTERIES FROM RIGHT (items table) AND MATCHING FIELDS IN BOTH TABLE ARE DISPLAYED  */



/*   APPLYING LEFT JOIN ON CUSTOMERS AND ITEMS TABLE    */

SELECT  Name, Order_value, item_name, bill_status 
FROM customers 
LEFT JOIN 
items ON customers.id = items.id;

/*  ALL THE ENTERIES FROM LEFT (CUSTOMERS table) AND MATCHING FIELDS IN BOTH TABLE ARE DISPLAYED  */



/*   APPLYING FULL OUTER  JOIN ON CUSTOMERS AND ITEMS TABLE    */

SELECT Name, Address, Order_value, item_name, bill_status 
FROM customers 
FULL JOIN 
items ON customers.id = items.id;

/*  ALL THE ENTERIES FROM RIGHT (items table) AND MATCHING FIELDS IN BOTH TABLE ARE DISPLAYED  */



/*SUB QUERY : FIRST FIND THE CUSTOMERS WHOSE ORDER_VALUE AND BILL_STATUS IS PRESENT USING INNER JOIN, 
THEN DISPLAY THE CUSTOMERS HAVING THE ORDER_VALUE GREATER THEN THE AVERAGE ORDER_VALUE*/  

SELECT name, Order_value, bill_status
FROM customers 
INNER JOIN 
items ON customers.id = items.id 
WHERE 
customers.order_value > (SELECT AVG(order_value) FROM customers);







/*       ASSESSMENT  1 , QUESTION 2  */

/*     Create employees table  */
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255),
    department_id INT,
    salary DECIMAL(10, 2)
);

INSERT INTO employees VALUES (1, 'Ramesh', 1, 60000.00);
INSERT INTO employees VALUES (2, 'Rakesh', 1, 55000.00);
INSERT INTO employees VALUES (3, 'Suresh', 2, 70000.00);
INSERT INTO employees VALUES (4, 'Mahesh', 2, 65000.00);
INSERT INTO employees VALUES (5, 'Ganesh', 1, 62000.00);
INSERT INTO employees VALUES (6, 'Vinod', 2, 72000.00);

SELECT * FROM employees;


/*  DML COMMAND (UPDATE) : UPDATE SALARY OF SURESH */

UPDATE employees SET salary = 75000 WHERE employee_name = 'Suresh';
SELECT * FROM Employees;

/*  ADDING 1 DUPLICATE ROW TO THE TABLE */
INSERT INTO employees VALUES (7, 'Vinod', 2, 72000.00);
SELECT * FROM employees;


/*   DML COMMAND (DELETE) : DELETE THE DUPLICATE ROW FROM THE TABLE*/
DELETE FROM employees FROM employees WHERE employee_id=7;
SELECT * FROM employees;


/*  SQL command 1: Use GROUP BY to find the average salary by department */

SELECT
department_id,
AVG(salary) AS avg_salary
FROM
employees
GROUP BY  department_id;



 --Command 2: Use GROUP BY and HAVING to find departments with more than 1 employee
SELECT
department_id,
COUNT(*) AS num_employees
FROM   employees
GROUP BY  department_id
HAVING COUNT(*) > 1;





/* Command 3 : Ffind departments with an average salary greater than the overall average*/

SELECT
department_id,
AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING  AVG(salary) > (SELECT AVG(salary) FROM employees);
