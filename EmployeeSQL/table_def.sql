CREATE TABLE IF NOT EXISTS titles(
	title_id CHAR(5) PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS departments(
	dept_no CHAR(4) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
	emp_no INT PRIMARY KEY,
	emp_title CHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title)
		REFERENCES titles(title_id)
);

CREATE TABLE IF NOT EXISTS department_employees(
	emp_no INT NOT NULL,
	dept_no CHAR(4) NOT NULL,
	PRIMARY KEY ( emp_no, dept_no),
	FOREIGN KEY ( emp_no)
		REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no)
		REFERENCES	departments(dept_no)
);

CREATE TABLE IF NOT EXISTS department_manager(
	dept_no CHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY ( dept_no, emp_no),
	FOREIGN KEY ( emp_no)
		REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no)
		REFERENCES	departments(dept_no)
);

CREATE TABLE IF NOT EXISTS salaries(
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no)
		REFERENCES employees(emp_no)
);

