/* NO JOINS */

/* Retrieve all data from customers and orders in 
two different resulta */

use MyDatabase;

SELECT *
FROM customers;

SELECT *
FROM orders;

/* INNER JOINS */

/* Get all customers along with their orders, but only for
customers who have placed an order */

