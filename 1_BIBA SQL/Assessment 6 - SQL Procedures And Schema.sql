/*   SOME & ALL OPERATORS    */

-- Create a sample table for demonstration
CREATE TABLE products (product_id INT PRIMARY KEY,  product_name VARCHAR(255),  price DECIMAL(10, 2));

-- Insert some sample data
INSERT INTO products VALUES (1, 'Laptop', 1000.00);
INSERT INTO products VALUES (2, 'Smartphone', 500.00);
INSERT INTO products VALUES (3, 'Tablet', 300.00);

SELECT * FROM products;

-- Example using the SOME operator

SELECT product_name, price FROM products 
WHERE price > SOME (SELECT price FROM products WHERE product_name = 'Smartphone');

-- Example using the ALL operator

SELECT product_name, price FROM products
WHERE price > ALL (SELECT price FROM products WHERE product_name = 'Smartphone');




/*    WITH CLAUSE   */

CREATE TABLE employees ( employee_id INT PRIMARY KEY,  employee_name VARCHAR(255),  department_id INT );

INSERT INTO employees VALUES (1, 'John Doe', 101);
INSERT INTO employees VALUES (2, 'Jane Smith', 102);
INSERT INTO employees VALUES (3, 'Bob Johnson', 101);
INSERT INTO employees VALUES (4, 'Alice Brown', 102);

-- Use WITH clause to define a Common Table Expression (CTE)

WITH DepartmentEmployeeCount AS (  SELECT  department_id,  COUNT(*) AS employee_count

FROM  employees  GROUP BY  department_id)

-- Use the CTE in the main query

SELECT
    employees.employee_id,
    employees.employee_name,
    employees.department_id,
    DepartmentEmployeeCount.employee_count
FROM  employees JOIN DepartmentEmployeeCount ON employees.department_id = DepartmentEmployeeCount.department_id;



/*       STORED PROCEDURE IN SQL         */

CREATE TABLE employees2 ( employee_id INT PRIMARY KEY,  employee_name VARCHAR(255),  salary DECIMAL(10, 2));

INSERT INTO employees2 VALUES (1, 'John Doe', 50000.00);
INSERT INTO employees2 VALUES (2, 'Jane Smith', 60000.00);
INSERT INTO employees2 VALUES (3, 'Bob Johnson', 55000.00);

/* Create a stored procedure to retrieve employees with a salary above a certain threshold Parameters: @min_salary - Minimum salary threshold*/

CREATE PROCEDURE GetHighSalaryEmployees(@min_salary DECIMAL(10, 2))
AS
BEGIN
    SELECT employee_id, employee_name, salary  FROM employees2  WHERE salary > @min_salary;
END;

-- Execute the stored procedure with a parameter value
EXEC GetHighSalaryEmployees @min_salary = 55000.00;




/*   ROLLUP Command in SQL  */

CREATE TABLE sales_info (region VARCHAR(255),  product VARCHAR(255),  amount DECIMAL(10, 2));

INSERT INTO sales_info VALUES ('North', 'Laptop', 1000.00);
INSERT INTO sales_info VALUES ('North', 'Tablet', 500.00);
INSERT INTO sales_info VALUES ('South', 'Laptop', 1200.00);
INSERT INTO sales_info VALUES ('South', 'Tablet', 600.00);

-- Use the ROLLUP operator to generate subtotals and grand total
SELECT  region,  product,  SUM(amount) AS total_amount FROM  sales_info GROUP BY  ROLLUP (region, product);




/*  STAR SCHEMA IN SQL */ 

-- Fact Table
CREATE TABLE SalesFact ( DateID INT,  ProductID INT,   CustomerID INT,   SalesAmount DECIMAL(10, 2));

-- Dimension Tables
CREATE TABLE DateDim ( DateID INT PRIMARY KEY,  DateValue DATE,
-- other date-related attributes
);

CREATE TABLE ProductDim (  ProductID INT PRIMARY KEY,  ProductName VARCHAR(255),
    -- other product-related attributes
);

CREATE TABLE CustomerDim (  CustomerID INT PRIMARY KEY,   CustomerName VARCHAR(255),
    -- other customer-related attributes
);



/*    SNOW FLAKE SCHEMA    */

-- Fact Table (Same as STAR Schema)
CREATE TABLE SalesFact ( DateID INT,  ProductID INT,   CustomerID INT,   SalesAmount DECIMAL(10, 2));

-- Dimension Tables (Normalized)
CREATE TABLE DateDim ( DateID INT PRIMARY KEY,  DateValue DATE,
    -- other date-related attributes
);

CREATE TABLE ProductDim ( ProductID INT PRIMARY KEY,  ProductName VARCHAR(255),
    -- other product-related attributes
);

CREATE TABLE CategoryDim (  CategoryID INT PRIMARY KEY,  CategoryName VARCHAR(255),
-- other category-related attributes
);

CREATE TABLE CustomerDim ( CustomerID INT PRIMARY KEY,  CustomerName VARCHAR(255),
    -- other customer-related attributes
);

