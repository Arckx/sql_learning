/* NO JOIN */

/* Retrieve all data from customers and orders in 
two different resulta */

use MyDatabase;

SELECT *
FROM customers;

SELECT *
FROM orders;

/* INNER JOIN */

/* Get all customers along with their orders, but only for
customers who have placed an order */

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;


/* LEFT JOIN */

/* Get all customers along with their orders, including those without orders */

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;

/* LEFT ANTI JOIN */

/* Get all customers who haven't placed any order */

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

/* RIGHT JOIN */
 
/* Get all customers along with their orders, including orders without matching customers */

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id;

/* TASK */

/* Get all cusotmers along with their orders, including orders without matching 
customers (USING LEFT JOIN ONLY)*/

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

/* FULL JOIN */

/* Get all customers and all orders, even if there's no match */

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id;

/* FULL ANTI JOIN */

/* Find customers without orders and orders without customers */

SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;

/* TASK */

/* Get all customers along with their orders, but only for customers
who have placed an order (Without using INNER JOIN) */

SELECT *
FROM orders AS o
FULL JOIN customers AS c
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;

/* LEFT ANTI JOIN */

/* Get all customers who haven't placed any order */

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL;

/* RIGHT ANTI JOIN */

/* Get all orders without matching customers */

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL;

/* TASK */

/* Get all orders without matching customers (Using LEFT JOIN) */

SELECT *
FROM orders AS o
LEFT JOIN customers AS c 
ON c.id = o.customer_id
WHERE c.id IS NULL;

/* FULL ANTI JOIN */

/* Find customers without orders and orders without customers */

SELECT *
FROM orders AS o
FULL JOIN customers AS c 
ON c.id = o.customer_id
WHERE c.id IS NULL OR o.customer_id IS NULL;

/* TASK */

/* Get all customers along with their orders, but only for 
customers who have placed an order (Without using 
INNER JOIN) */

SELECT *
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL;

/* CROSS JOIN */

/* Generate all the possible combinations of customers and orders */

SELECT *
FROM customers AS c
CROSS JOIN orders AS o;

/* FINAL TASK */

/* Using SalesDB, Retrieve a list of all orders, along 
with the related customer, product, and employees details.
For each order, display:
- Order ID
- Customer's name
- Product name
- Sales amount
- Product proce
- Salesperson's name */

use SalesDB;

SELECT 
o.OrderID,
o.Sales,
c.FirstName AS CustomerFirstName,
c.LastName AS CustomerLastName,
p.Product AS ProductName,
p.Price,
e.FirstName AS EmployeeFirstName,
e.LastName AS EmployeeLastName
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID;

