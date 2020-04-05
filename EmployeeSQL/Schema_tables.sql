Drop Table departments;
Drop TABLE dept_emp;
Drop TABLE dept_manager;
Drop Table employees;
Drop Table salaries;
Drop Table titles;

Create Table departments(
	dept_no VARCHAR(30) Primary Key,
	dept_name VARCHAR(30)
	);
	
Create Table dept_emp(
	emp_no VARCHAR  NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	from_date VARCHAR(30) NOT NULL,
	to_date VARCHAR(30) NOT NULL
);

Create Table dept_manager(
	dept_no VARCHAR(30),
	emp_no VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);

Create Table employees(
	emp_no VARCHAR(30),
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(30),
	hire_date VARCHAR(30)
);

Create Table salaries(
	emp_no VARCHAR(30),
	salary VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);

Create Table titles (
	emp_no VARCHAR(30),
	title VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);
