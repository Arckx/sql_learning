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