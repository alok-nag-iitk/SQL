/*
Highest Cost Orders (Amazon)



Find the customer with the highest total order cost between 2019-02-01 to 2019-05-01.
Output their first name, total cost of their items, and the date.For simplicity, you 
can assume that every first name in the dataset is unique.


customers
------------------------
id		int
first_name	varchar
last_name	varchar
city		varchar
address		varchar
phone_number	varchar


orders
------------------------
id		int
cust_id		int
order_date	datetime
order_quantity	int
order_details	varchar
order_cost	int





with cte as 
(select
        c.first_name, 
        order_date, 
        sum(order_quantity * order_cost) as total_order_value
    
from customers c
left join orders o
on c.id = o.cust_id
where order_date between '2019-02-01' and  '2019-05-01'
group by c.first_name, o.order_date
)

SELECT 
    first_name, 
    order_date, 
    total_order_value
from cte
where total_order_value = (select max(total_order_value) from cte);



/*
output


first_name	order_date	total_order_value
---------------------------------------------------
Farida		2019-03-04	430
Mia		2019-04-19	430