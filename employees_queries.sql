-- List the following details of each employee: employee number, last name, first name, sex, and salary.
 SELECT p.emp_no, first_name, last_name, sex, m.salary
 FROM employees as p
 INNER JOIN salaries AS m on
 p.emp_no = m.salary;
 
--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986' AND  hire_date <= '12/31/1986';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name
from employees
where first_name = 'Hercules'
AND last_name LIKE 'B%';



--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';



--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT (last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC;