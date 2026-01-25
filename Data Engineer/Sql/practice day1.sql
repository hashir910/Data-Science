

--1. Fetch the **names and salaries** of employees from the **IT department** who earn **more than 60000**.---

SELECT * 
FROM employee

select 
	name,
	salary
from employee
Where department = 'IT' and salary > 60000

--2. Find **distinct cities** where employees belong to the **HR or Finance departments**.--

SELECT DISTINCT
	city,
	department
FROM  employee
WHERE  department = 'HR' OR department = 'Finance'

--3. Fetch **department** and **average salary** for each department. Only show departments where the **average salary is greater than 60000**.--

SELECT 
	department,
	avg(salary) AS average_dpt_salaries
FROM employee
GROUP BY department
HAVING avg(salary)>60000

--4. Fetch **name, department, and salary** of employees **older than 25**, and order them by **salary descending**.--

SELECT 
	name,
	department,
	salary
FROM employee
WHERE age > 25
ORDER BY salary DESC

--5. Find the **count of employees** in each department, but only include departments with **more than 2 employees**.--

SELECT 
	department,
	count(emp_id) as No_of_Employee
FROM employee
GROUP BY department
HAVING count(emp_id)>2


--6. Fetch **distinct combinations of department and city**, ordered alphabetically by **department**.--

SELECT DISTINCT 
	department,
	city
FROM employee
ORDER BY department ASC

--7. Fetch **name and salary** of employees whose salary is **either 50000 or 70000**, and order by **name ascending**.--

SELECT 
	name,
	salary
FROM employee
WHERE salary = 50000 OR salary = 70000
ORDER BY name ASC


--8. Find **average salary** per city, and only show cities where the **average salary is above 60000**.--

SELECT	
	city,
	avg(salary) as average_salary_city
FROM employee
GROUP BY city
HAVING avg(salary)>60000
