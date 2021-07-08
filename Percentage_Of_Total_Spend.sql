/*

Percentage Of Total Spend
-----------------------------
Find the percentage of the total spend a customer spent on each order. Output the customer’s first name, order details, 
and percentage of their total spend for each order transaction rounded to the nearest whole number. Assume each customer 
has a unique first name (i.e., there is only 1 customer named Karen in the dataset).

For simplicity, let's just assume that the `order_cost` represents the total cost of the user's order for that particular 
transaction record (i.e., `order_cost` does not represent unit cost of the item).


Tables: orders, customers
--------------------------------

orders
--------------------------------
id		int
cust_id		int
order_date	datetime
order_quantity	int
order_details	varchar
order_cost	int


customers
--------------------------------
id		int
first_name	varchar
last_name	varchar
city		varchar
address		varchar
phone_number	varchar

*/



-- approach

-- join two tables using inner join
-- using windows funtions calculate total spending of each customer
-- divide individual purachase cost by total spending to find percentage of total cost


SELECT 
    c.first_name,
    o.order_details,
    ROUND(100*o.order_cost / SUM(o.order_cost) OVER (PARTITION BY c.first_name)) AS percent_spend
FROM orders o
INNER JOIN customers c
ON c.id = o.cust_id
ORDER BY 1;


