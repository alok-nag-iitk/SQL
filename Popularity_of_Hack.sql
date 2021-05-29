/*

Popularity of Hack

Facebook has developed a new programing language called Hack.To measure the popularity of Hack they ran a survey with their employees. The survey included data on previous programing familiarity as well as the number of years of experience, age, gender and most importantly satisfaction with Hack. Due to an error location data was not collected, but your supervisor demands a report showing average popularity of Hack by office location. Luckily the user IDs of employees completing the surveys were stored.
Based on the above, find the average popularity of the Hack per office location.
Output the location along with the average popularity.

facebook_employees
---------------------------
id			int
location		varchar
age			int
gender			varchar
is_senior		bool


facebook_hack_survey
---------------------------
employee_id		int
age			int
gender			varchar
popularity		int

*/


SELECT 
    location,
    AVG(popularity) AS avg_popularity
FROM 
    facebook_employees emps
LEFT JOIN
    facebook_hack_survey survey
ON emps.id = survey.employee_id
GROUP BY location


/* 

Output

location	    avg_popularity
----------------------------------
UK	            4.333
USA             4.6
India           7.5
Switzerland     1

*/
