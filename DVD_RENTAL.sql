#1 (kata 6)

SELECT 
  customer.customer_id as customer_id,
  customer.email as email,
  count(payment.payment_id) as payments_count,
  sum(payment.amount)::float as total_amount
  
FROM customer
LEFT JOIN payment

ON customer.customer_id = payment.customer_id
GROUP BY 1
ORDER BY 4 DESC
LIMIT 10




#2 (kata 7)

SELECT 
  id,
  ASCII(name) as name,
  birthday,
  ASCII(race) as race
  
FROM demographics



#3 (kata 7)

SELECT
  CASE
    WHEN SUM(number1)%2 = 1 THEN MIN(number1)
    ELSE MAX(number1)
  END AS number1,
  
  CASE
    WHEN SUM(number2)%2 = 1 THEN MIN(number1)
    ELSE MAX(number2)
  END AS number2
  
FROM numbers





#4 (kata 6)


  
