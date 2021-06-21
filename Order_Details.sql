Order Details
----------------------------------------

Find order details made by Jill and Eva.
Consider the Jill and Eva as first names of customers.
Output the order date, details and cost along with the first name.
Order records based on the customer id in ascending order.

Tables: customers, orders

customers
--------------------------
id		int
first_name	varchar
last_name	varchar
city		varchar
address		varchar
phone_number	varchar


orders
--------------------------
id		int
cust_id		int
order_date	datetime
order_quantity	int
order_details	varchar
order_cost	int




SELECT c.first_name, o.order_date, o.order_details, o.order_cost
FROM 	orders o
INNER JOIN customers c
ON o.cust_id = c.id AND c.first_name IN ('Jill', 'Eva')
ORDER BY c.id ASC;


first_name	order_date	order_details	order_cost
Jill		2019-02-01	Coat		25
Jill		2019-03-10	Shoes		80
Jill		2019-04-02	Skirt		30
Jill		2019-04-03	Dresses		50
Jill		2019-04-04	Coat		25
Jill		2019-04-19	Suit		150
Jill		2019-04-01	Suit		50
Eva		2019-01-11	Shirts		60
Eva		2019-03-11	Slipper		20
Eva		2019-01-11	Coat		125

