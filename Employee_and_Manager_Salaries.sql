/*

Employee and Manager Salaries
--------------------------------------
Find employees who are earning more than their managers. 
Output the employee name along with the corresponding salary.

Table: employee
----------------------
id		int
first_name	varchar
last_name	varchar
age		int
sex		varchar
employee_title	varchar
department	varchar
salary		int
target		int
bonus		int
email		varchar
city		varchar
address		varchar
manager_id	int

*/


SELECT a.first_name, a.salary
FROM employee a, employee b
WHERE a.manager_id = b.id AND a.salary > b.salary