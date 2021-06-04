/*

Top 5 States With 5 Star Businesses (Yelp)


Find the top 5 states with the most 5 star businesses. Output the state name along with the number f 5-star 
businesses and order records by the number of 5-star businesses in descending order. In case there are two 
states with the same result, sort them in alphabetical order.


yelp_business
---------------------------------
business_id		varchar
name			varchar
neighborhood		varchar
address			varchar
city			varchar
state			varchar
postal_code		varchar
latitude		float
longitude		float
stars			float
review_count		int
is_open			int
categories		varchar



*/
--  Approach

-- select businesses with 5 stars rating
-- count the number of businesses grouped by states
-- order by 1. no of businesses in descending order, state by ascending order



select state, count(*) as no_of_business
from yelp_business
where stars = 5
group by state
order by 2 desc, 1 asc
LIMIT 5;


/* 

Output

state	no_of_business
------------------------
AZ	6
EDH	1
IL	1
NV	1
OH	1
