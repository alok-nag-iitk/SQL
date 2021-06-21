Classify Business Type
---------------------------------------------

Classify each business as either a restaurant, cafe, school, or other. 
A restaurant should have the word 'restaurant' in the business name. For 
cafes, either 'cafe' or 'coffee' can be in the business name. 
'School' should be in the business name for schools. 
All other businesses should be classified as 'other'.


Table: sf_restaurant_health_violations
-------------------------------------------
business_id			int
business_name			varchar
business_address		varchar
business_city			varchar
business_stat			evarchar
business_postal_code		float
business_latitude		float
business_longitude		float
business_location		varchar
business_phone_number		float
inspection_id			varchar
inspection_date			datetime
inspection_score		float
inspection_type			varchar
violation_id			varchar
violation_description		varchar
risk_category			varchar



SELECT 
    distinct business_name,
    CASE
        WHEN business_name ILIKE '%school%' THEN 'school'
        WHEN business_name ILIKE '%restaurant%' THEN 'restaurant'
        WHEN (business_name ILIKE '%cafe%') OR (business_name ILIKE '%coffee%') THEN 'cafe'
       
        ELSE 'other'
    end as business_type
FROM
    sf_restaurant_health_violations;




 
