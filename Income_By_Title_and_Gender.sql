/*

Income By Title and Gender
-------------------------------
Find the average total compensation based on employee titles and gender.  
Total compensation is calculated by adding both the salary and bonus of 
each employee. However, not every employee receives a bonus so disregard 
employees without bonuses in your calculation. 

Output the employee title, gender (i.e., sex), along with the average total compensation.


Tables: sf_employee, sf_bonus
------------------------------------

sf_employee
--------------------------
id		int
first_name	varchar
last_name	varchar
age		int
sex		varchar
employee_title	varchar
department	varchar
salary		int
target		int
email		varchar
city		varchar
address		varchar
manager_id	int


sf_bonus
---------------------------
worker_ref_id	int
bonus		int
bonus_date	datetime

*/


WITH cte_bonus as 
(
 SELECT worker_ref_id, SUM(bonus) AS bonus
 FROM sf_bonus
 GROUP BY worker_ref_id)

SELECT e.employee_title, e.sex, AVG(e.salary + b.bonus) as income
FROM sf_employee e
INNER JOIN cte_bonus b
ON e.id = b.worker_ref_id
GROUP BY e.employee_title, e.sex


 
