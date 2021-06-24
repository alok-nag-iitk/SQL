/*

Highest Number Of Orders
-----------------------------------
Find the customer who has placed the highest number of orders. 
Output the id of the customer along with the corresponding number of orders.

Tables: customers, orders

customers
----------------------
id		int
first_name	varchar
last_name	varchar
city		varchar
address		varchar
phone_number	varchar

orders
-----------------------
id		int
cust_id		int
order_date	datetime
order_quantity	int
order_details	varchar
order_cost	int

*/


/*
approach 

- joined orders to customers table using left join
- calculated total number of orders per cusotmers using group by
- ranked customers based on number of orders using dense rank
- selected cusotmers with rank 1

*/

with cte_total_orders AS
(SELECT
    c.id as cust_id, 
    COUNT(o.id) AS order_count, 
    rank() OVER (ORDER BY COUNT(o.id) DESC) as ranking
FROM customers c
LEFT JOIN orders o
ON c.id = o.cust_id
GROUP BY c.id
ORDER BY order_count DESC)

SELECT cust_id, order_count 
FROM cte_total_orders
WHERE ranking = 1;
