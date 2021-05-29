/*

Finding User Purchases

Write a query that'll identify returning active users. A returning active user is a user that has made a second purchase within 7 days of any other of their purchases.
Output a list of user_ids of these returning active users.


Table: amazon_transactions

amazon_transactions
--------------------------
id                int
user_id           int
item              varchar
created_at        datetime
revenue           int

*/



WITH CTE_RETURN_CUSTOMER AS
(
SELECT 
    user_id, item, created_at,
    lag(created_at, 1) OVER (PARTITION BY user_id ORDER BY created_at) as previous_purchase_at,     -- previous purchase date
    (created_at - lag(created_at, 1) OVER (PARTITION BY user_id ORDER BY created_at)) as no_of_days -- time difference of two consecutive purchases in days
FROM amazon_transactions

) 

SELECT DISTINCT user_id
FROM CTE_RETURN_CUSTOMER
WHERE no_of_days <= 7
ORDER BY user_id;

