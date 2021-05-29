/*

Fans vs Opposition


Facebook is quite keen on pushing their new programming language Hack to all their offices.They ran a survey to quantify the popularity of the language and send it to their employees.
To promote Hack they have decided to pair developers which love Hack with the ones who hate it so the fans can convert the opposition. Their pair criteria is to match the biggest fan with biggest opposition,
second biggest fan with second biggest opposition, and so on.Write a query which returns this pairing.
Output employee ids of paired employees and sort users with the same popularity value by id in ascending order.
You can limit the number of rows to 7 so that the employees don't repeat.


facebook_hack_survey
-----------------------
employee_id	int
age		int
gender		varchar
popularity	int


*/


SELECT *
FROM 
    (SELECT employee_id as lover_employee_id,
            ROW_NUMBER() OVER ( ORDER BY  popularity desc) as lover_rank
    FROM facebook_hack_survey) lh
INNER JOIN 
    (SELECT employee_id as hater_employee_id,
            ROW_NUMBER() OVER ( ORDER BY  popularity) as hater_rank
    FROM facebook_hack_survey) hh
ON lh.lover_rank = hh.hater_rank

