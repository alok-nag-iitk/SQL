/*

*Distances Traveled*
Find the top 10 users that have traveled the greatest distance. Output their names and total distance traveled.


lyft_rides_log schema
-------------------------
id 		int
user_id		int
distance	int


lyft_users schema
----------------------------
id		  int
name		varchar

*/



SELECT
    lyft_users.name as name,
    SUM(lyft_rides_log.distance) as total_distance
    
FROM lyft_users
INNER JOIN lyft_rides_log
ON lyft_users.id = lyft_rides_log.user_id
GROUP BY name
ORDER BY total_distance DESC
LIMIT 10;
