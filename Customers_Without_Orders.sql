/*

Customers Without Orders
---------------------------
Find customers who have never made an order.
Output the first name of the customer.

customers
---------------------
id		int
first_name	varchar
last_name	varchar
city		varchar
address		varchar
phone_number	varchar

orders
---------------------
id		int
cust_id		int
order_date	datetime
order_quantity	int
order_details	varchar
order_cost	int

*/


SELECT 
    c.id, c.first_name
FROM customers c
LEFT JOIN orders o
ON c.id = o.cust_id
GROUP BY 1, 2
HAVING COUNT(o.id) = 0;