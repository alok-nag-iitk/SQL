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


