/*
Inspections That Resulted In Violations


You're given a dataset of health inspections. Count the number of inspections that resulted in a violation for 'Roxanne Cafe' for each year.
If an inspection resulted in a violation, there will be a value in the 'violation_id' column. Output the number of inspections by year in ascending order.



sf_restaurant_health_violations
------------------------------------------
business_id			int
business_name			varchar
business_address		varchar
business_city			varchar
business_state			varchar
business_postal_code		float
business_latitude		float
business_longitude		float
business_location		varchar
business_phone_number		float
inspection_id			varchar
inspection_date			datetime
inspection_score		float
inspection_type			varchar
violation_idvar			char
violation_description		varchar
risk_category			varchar



-- filter entries with business_name as 'Roxxanee Cafe' and non Null violation_id values.

-- extracting year from inspection_date using extract function
-- counting numbers of entries grouped by years


*/


SELECT
    EXTRACT(year FROM inspection_date) AS year, 
    COUNT(*) AS violation_count

FROM sf_restaurant_health_violations
WHERE business_name = 'Roxanne Cafe' 
AND   violation_id is NOT NULL
GROUP BY year
ORDER BY year;


/*

output

year	violation_count
-------------------------
2015	5
2016	2
2018	3