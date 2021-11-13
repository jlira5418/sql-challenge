SELECT 
	employees.emp_no, 
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM
	employees 
	JOIN salaries ON employees.emp_no = salaries.emp_no;
	
SELECT
	first_name,
	last_name,
	hire_date
FROM
	employees
WHERE
	EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY
	last_name, hire_date;
	
SELECT
	departments.dept_no, 
  	departments.dept_name,
	department_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM
	departments
	JOIN department_manager ON departments.dept_no = department_manager.dept_no
	JOIN employees ON employees.emp_no = department_manager.emp_no;
	
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
  	departments.dept_name
FROM
	departments
	JOIN department_employees ON departments.dept_no = department_employees.dept_no
	JOIN employees ON employees.emp_no = department_employees.emp_no;
	
SELECT
	first_name,
	last_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules' AND
	last_name LIKE 'B%';
	
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
  	departments.dept_name
FROM
	departments
	JOIN department_employees ON departments.dept_no = department_employees.dept_no
	JOIN employees ON employees.emp_no = department_employees.emp_no
WHERE
	departments.dept_name = 'Sales' ;
	
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
  	departments.dept_name
FROM
	departments
	JOIN department_employees ON departments.dept_no = department_employees.dept_no
	JOIN employees ON employees.emp_no = department_employees.emp_no
WHERE
	departments.dept_name = 'Sales' OR
	departments.dept_name = 'Development';
	
SELECT
	last_name,
	COUNT(last_name) AS last_name_count
FROM
	employees
GROUP BY
 	last_name
ORDER BY 
	 last_name_count DESC;
	


	
	

	
	
	
	
	

	
	

	
