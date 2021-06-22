Highest Target Under Manager
------------------------------------
Find the highest target achieved by the employee or employees who works 
under the manager id 13. Output the first name of the employee and target 
achieved. The solution should show the highest target achieved under 
manager_id=13 and which employee(s) achieved it.


Table: salesforce_employees


salesforce_employees
-------------------------
id		int
first_name	varchar
last_name	varchar
ageint
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

SELECT target, id, first_name, last_name
FROM salesforce_employees
WHERE target = (select MAX(target) from salesforce_employees
                WHERE manager_id = 13);