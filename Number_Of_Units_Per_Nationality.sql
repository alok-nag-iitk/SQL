/*

Number Of Units Per Nationality
----------------------------------------

Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order.

Tables: airbnb_hosts, airbnb_units


airbnb_hosts
--------------------------
host_id		int
nationality	varchar
gender		varchar
age		int


airbnb_units
---------------------------
host_id		int
unit_id		varchar
unit_type	varchar
n_beds		int
n_bedrooms	int
country		varchar
city		varchar

*/

SELECT h.nationality, COUNT(*)
FROM
    airbnb_hosts h
INNER JOIN
    airbnb_units U
ON (h.host_id = u.host_id)
WHERE (h.age < 30) AND (u.unit_type = 'Apartment')
GROUP BY h.nationality
