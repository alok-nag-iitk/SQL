/*

Highest Energy Consumption
----------------------------------

Find the date with the highest total energy consumption from the Facebook data centers. 
Output the date along with the total energy consumption across all data centers.

Tables: fb_eu_energy, fb_asia_energy, fb_na_energy


fb_eu_energy
-------------------------
date		datetime
consumption	int

fb_asia_energy
-------------------------
date		datetime
consumption	int

fb_na_energy
-------------------------
date		datetime
consumption	int



*/


/* approach

- concatenate all tables using union
- group rows by date and calculate sum of all energy consumption.
- select dates with maximum consumption
*/

WITH cte_energy AS 
(SELECT * FROM fb_eu_energy
UNION ALL
SELECT * FROM fb_asia_energy
UNION ALL
SELECT * FROM fb_na_energy)

SELECT date, total_energy_consumption
FROM( SELECT 
        date,
        SUM(consumption) as total_energy_consumption,
        RANK() OVER (ORDER BY SUM(consumption) DESC) AS ranking
    FROM cte_energy
    GROUP BY date
    )a
WHERE ranking = 1;

