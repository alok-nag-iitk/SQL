/*

Highest Salary In Department
------------------------------
Find the employee with the highest salary per department.
Output the department name, employee's first name along with the corresponding salary.


employee
-------------------------
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


SELECT department, first_name, salary
FROM(
    SELECT
        department, first_name, salary,
        DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS ranking
    FROM employee
    )sub
    
WHERE ranking = 1
ORDER BY salary DESC;



