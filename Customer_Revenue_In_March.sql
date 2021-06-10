/*

Customer Revenue In March


Calculate the total revenue from each customer in March 2019. Revenue for each order is calculated by 
multiplying the order_quantity with the order_cost. Output the revenue along with the customer id and 
sort the results based on the revenue in descending order.


orders
---------------------------------
id			int
cust_id			int
order_date		datetime
order_quantity		int
order_details		varchar
order_cost		int

*/


/*

Approach

-- SELECT ENTRIES WHERE MONTH IS MARCH (03)
-- Calculate revenue by multiplying order_quantity and order_cost
-- get total revenue aggregated by each customer
-- display the cust_id and revenue in descending order of revenue

*/



SELECT cust_id, sum(order_quantity * order_cost) AS revenue
FROM orders
WHERE extract(month FROM order_date) = 03
GROUP BY cust_id
ORDER BY revenue DESC;

/*

output


cust_id		revenue
---------------------
3		510
15		330
7		80
12		20

*/