/*

running count of posts

Given a posts table that contains a created_at timestamp column write a query that returns date 
(without time component), a number of posts for a given date and a running (cumulative) total 
number of posts up until a given date. The resulting set should be ordered chronologically by date.

Table posts
---------------------
created_at 	datetime
text		title


Desired Output
---------------------------
The resulting set should look similar to the following:

date       | count | total
-----------+-------+-------
2017-01-26 |    20 |    20
2017-01-27 |    17 |    37
2017-01-28 |     7 |    44
2017-01-29 |     8 |    52

*/




/*

Approach 

-- count the number of posts as count column for each day using group by in subquery sub
-- calculate running of count column using windows function with aggregation SUM() 

*/

SELECT date, count,
SUM(count) OVER (ORDER BY date)::int as total
FROM 
  (
    SELECT
        DATE(created_at) as date, 
        COUNT(title) as count
    FROM posts
    GROUP BY date
  )sub