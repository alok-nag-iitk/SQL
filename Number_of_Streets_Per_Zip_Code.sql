/*
Number of Streets Per Zip Code
------------------------------------------
Find the number of different street names for each postal code, for the given business dataset.
 For simplicity, just count the first part of the name if the street name has multiple words. 

For example, East Broadway can be counted as East. East Main and East Broadly may be counted 
both as East, which is fine for this question. 

Counting street names should also be case insensitive, meaning FOLSOM should be counted the 
same as Folsom. Lastly, consider that some street names have different structures. For example, 
Pier 39 is not the same as 39 Pier, and E Broadway is not the same as East Broadway, so your 
solution should count both situations correctly.

Output the result along with the corresponding postal code. Order the result based on the number 
of streets in descending order and based on the postal code in ascending order.


Table: sf_restaurant_health_violations
---------------------------------------------
business_id		int
business_name		varchar
business_address	varchar
business_city		varchar
business_state		varchar
business_postal_code	float
business_latitude	float
business_longitude	float
business_location	varchar
business_phone_number	float
inspection_id		varchar
inspection_date		datetime
inspection_score	float
inspection_type		varchar
violation_id		varchar
violation_description	varchar
risk_category		varchar

*/



/*

approach

- extracted street names using split_part function based on given condition
- counted distinct street names per postal_code
- ordered by descending number of streets and ascending postal_code
*/

with cte_streets as 
(select 
    business_postal_code,
    business_address,
    CASE
        WHEN LEFT(business_address, 1) ~'\d'THEN SPLIT_PART(business_address, ' ', 2)
        ELSE SPLIT_PART(business_address, ' ', 1)
    END AS street
from sf_restaurant_health_violations
WHERE business_postal_code IS NOT NULL
order by 1, 3)

SELECT business_postal_code, COUNT(DISTINCT upper(street)) AS n_streets
FROM cte_streets
GROUP BY 1
ORDER BY 2 DESC, 1 ASC;
