**Salaries Differences**

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. Output just the difference in salaries.

Tables

**db_employee**
------------
id              int
first_name      varchar
last_name       varchar


salaryint
------------
department_id   int

db_dept
------------
id              int
department      varchar


*/


WITH cte_max_salaries as
(SELECT dept.department, max(salary) AS max_salary
FROM db_dept dept 
LEFT JOIN db_employee emp
ON dept.id = emp.department_id
WHERE dept.department in ('marketing', 'engineering')
GROUP BY 1)

SELECT (SELECT max_salary from cte_max_salaries WHERE department = 'marketing') - (SELECT max_salary from cte_max_salaries WHERE department = 'engineering') as salary_difference;
