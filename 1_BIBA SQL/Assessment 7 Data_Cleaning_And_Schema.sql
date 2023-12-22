/*  DATA CLEANING    */


-- Step 1: Create the employees table with sample data
CREATE TABLE new_employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO  new_employees (employee_id, employee_name, department, salary)
VALUES
    (1, 'John Doe', 'IT', 60000.00),
    (2, 'Jane Doe', 'HR', 55000.00),
    (3, 'Bob Smith', 'IT', 65000.00),
    (4, 'Alice Johnson', 'Finance', NULL),
    (5, 'John Doe', 'IT', 60000.00),
    (6, 'Charlie Brown', 'Marketing', 70000.00),
    (7, 'Jane Doe', 'HR', 55000.00),
    (8, 'Eva Green', NULL, 75000.00),
    (9, 'Bob Smith', 'IT', 65000.00),
    (10, 'David White', 'Finance', 80000.00);


	SELECT * FROM  new_employees;

	


-- Step 2: Delete duplicate rows using GROUP BY, HAVING, COUNT, ROW_NUMBER, and DELETE command
WITH DuplicateCTE AS (
 SELECT  employee_id,
 ROW_NUMBER() OVER (PARTITION BY employee_name, department, salary ORDER BY employee_id) AS RowNum
 FROM  new_employees
)
DELETE FROM  new_employees
WHERE employee_id IN (
SELECT employee_id
FROM DuplicateCTE
WHERE RowNum > 1
);

SELECT * FROM new_employees;



-- Step 3: Ordering table by employee_id
SELECT *
FROM  new_employees
ORDER BY employee_id;



-- Step 4: Update rows containing NULL values 
UPDATE  new_employees
SET salary = 0.00
WHERE salary IS NULL;

SELECT * FROM new_employees;



-- Step 5: -- Display the final cleaned table as output
SELECT *
FROM  new_employees;




/*   STAR SCHEMA    */

/* Star Schema: Fact Table (Sales) and Dimension Tables (Product, Customer)

Fact Table: Contains sales transactions  */

CREATE TABLE Sales_info (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    sale_date DATE,
    quantity_sold INT,
    total_amount DECIMAL(10, 2)
);

/*  Inserting data into the Sales table   */
INSERT INTO Sales_info (sale_id, product_id, customer_id, sale_date, quantity_sold, total_amount) VALUES
    (1001, 1, 101, '2023-01-15', 2, 1500.00),
    (1002, 2, 102, '2023-02-20', 1, 500.00),
    (1003, 3, 103, '2023-03-10', 4, 800.00);

	SELECT * FROM Sales_info;

/*   Dimension Table: Product   */
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(50)
);

/*   Inserting data into the Product table   */
INSERT INTO Product (product_id, product_name, category) VALUES
    (1, 'Laptop', 'Electronics'),
    (2, 'Printer', 'Electronics'),
    (3, 'Desk Chair', 'Furniture');

	SELECT * FROM Product;




/*   Dimension Table: Customer   */
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    city VARCHAR(100)
);

-- Inserting data into the Customer table
INSERT INTO Customer (customer_id, customer_name, city) VALUES
    (101, 'John Smith', 'New York'),
    (102, 'Jane Doe', 'Los Angeles'),
    (103, 'Bob Johnson', 'Chicago');

	SELECT * FROM Customer;



/*   Query to retrieve sales information with product and customer details  */
SELECT
    s.sale_id,
    p.product_name,
    p.category,
    c.customer_name,
    c.city,
    s.sale_date,
    s.quantity_sold,
    s.total_amount
FROM
    Sales_info s
    JOIN Product p ON s.product_id = p.product_id
    JOIN Customer c ON s.customer_id = c.customer_id;



	/*     SNOWFLAKE SCHEMA     */

	-- Snowflake Schema: Fact Table (Sales) and Normalized Dimension Tables (Product, ProductCategory, Customer, CustomerLocation)
-- Fact Table: Contains sales transactions
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    sale_date DATE,
    quantity_sold INT,
    total_amount DECIMAL(10, 2)
);

-- Inserting data into the Sales table
INSERT INTO Sales (sale_id, product_id, customer_id, sale_date, quantity_sold, total_amount) VALUES
    (1001, 1, 101, '2023-01-15', 2, 1500.00),
    (1002, 2, 102, '2023-02-20', 1, 500.00),
    (1003, 3, 103, '2023-03-10', 4, 800.00);


SELECT * FROM Sales;

-- Normalized Dimension Table: Product
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category_id INT
);

-- Inserting data into the Product table
INSERT INTO Product (product_id, product_name, category_id) VALUES
    (1, 'Laptop', 1),
    (2, 'Printer', 1),
    (3, 'Desk Chair', 2);

	SELECT * FROM Product;

-- Normalized Dimension Table: ProductCategory
CREATE TABLE ProductCategory (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);


-- Inserting data into the ProductCategory table
INSERT INTO ProductCategory (category_id, category_name) VALUES
    (1, 'Electronics'),
    (2, 'Furniture');

	SELECT * FROM ProductCategory;
-- Normalized Dimension Table: Customer
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    location_id INT
);


-- Inserting data into the Customer table
INSERT INTO Customer (customer_id, customer_name, location_id) VALUES
    (101, 'John Smith', 1),
    (102, 'Jane Doe', 2),
    (103, 'Bob Johnson', 3);


	SELECT * FROM Customer;
-- Normalized Dimension Table: CustomerLocation
CREATE TABLE CustomerLocation (
    location_id INT PRIMARY KEY,
    city VARCHAR(100)
);

-- Inserting data into the CustomerLocation table
INSERT INTO CustomerLocation (location_id, city) VALUES
    (1, 'New York'),
    (2, 'Los Angeles'),
    (3, 'Chicago');

	SELECT * FROM CustomerLocation;
-- Query to retrieve sales information with normalized product and customer details
SELECT
    s.sale_id,
    p.product_name,
    pc.category_name,
    c.customer_name,
    cl.city,
    s.sale_date,
    s.quantity_sold,
    s.total_amount
FROM
    Sales s
    JOIN Product p ON s.product_id = p.product_id
    JOIN ProductCategory pc ON p.category_id = pc.category_id
    JOIN Customer c ON s.customer_id = c.customer_id
    JOIN CustomerLocation cl ON c.location_id = cl.location_id;
