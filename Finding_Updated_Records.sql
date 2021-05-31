/*
Finding Updated Records (microsoft)

We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.


ms_employee_salary
----------------------
id		int
first_name	varchar
last_name	varchar
salary		int
department_id	int


Apporoach 

1. there are some entries with repeated employee information i.e. id, first_name and last_name. As the salaries increase each year, the entries with maximum salaries for each employee should be the lastest entry. 

2. for selecting these entries. We use ranking window function eank() to rank each entry for each employee in descending order of their salaries.

3. query the first ranked entry for each employee.

*/



with cte_salary as(
    select 
        *, rank() over (partition by id order by salary desc) as ranking
    from ms_employee_salary)
    
select 
    id,
    first_name,
    last_name,
    department_id,
    salary as current_salary
from cte_salary
where ranking = 1
order by id;





id	first_name	last_name	department_id	current_salary
------------------------------------------------------------------------
1	Todd		Wilson		1006		110000
2	Justin		Simon		1005		130000
3	Kelly		Rosario		1002		42689
4	Patricia	Powell		1004		170000
5	Sherry		Golden		1002		44101
6	Natasha		Swanson		1005		90000
7	Diane		Gordon		1002		74591
8	Mercedes	Rodriguez	1005		61048
9	Christy		Mitchell	1001		150000
10	Sean		Crawford	1006		190000