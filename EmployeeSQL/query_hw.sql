-- 1.List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


--2.List employees who were hired in 1986.
SELECT employees.emp_no, employees.last_name,
       employees.first_name,employees.hire_date
FROM employees
Where employees.hire_date like '1986%';


--3.List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
Select dept_manager.dept_no,
departments.dept_name,
dept_manager.emp_no,
employees.last_name,
employees.first_name,
employees.hire_date
From dept_manager
Inner Join departments
On departments.dept_no=dept_manager.dept_no
Inner Join employees
On employees.emp_no=dept_manager.emp_no;


--4. List the department of each employee with the following information: employee number, 
--last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;


--5. List all employees whose first name is "Hercules" and last names begin with "B."
select emp_no, 
	   last_name,
       first_name
From employees
Where employees.first_name = 'Hercules' 
And employees.last_name like 'B%';

--6. List all employees in the Sales department, including their employee number,
--last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
Where departments.dept_name='Sales';


--7. List all employees in the Sales and Development departments, including their employee
--number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
Where departments.dept_name='Sales'
OR  departments.dept_name='Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many
--employees share each last name.
SELECT Distinct employees.last_name ,count(employees.last_name)
FROM employees
Group BY  employees.last_name
Order BY count(employees.last_name) DESC;
