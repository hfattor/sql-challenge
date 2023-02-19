-- List employee number, last name, first name, sex, and salary of each employee
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no
ORDER BY "emp_no"
;

-- List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
WHERE hire_date between '1986-01-01' and '1986-12-31'
ORDER BY "hire_date"
;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.dept_no, departments.dept_name
from dept_manager
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no
ORDER BY "last_name"
;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select dept_employees.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
INNER JOIN dept_employees ON
dept_employees.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_employees.dept_no
ORDER BY "last_name"
;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
WHERE first_name='Hercules' and last_name LIKE 'B%'
;

-- Determine department number for Sales department
select * 
from departments
;

-- Sales - d007
-- List each employee in the Sales department, including their employee number, last name, and first name
select employees.emp_no, employees.last_name, employees.first_name
from employees 
WHERE emp_no IN
(
	select emp_no
	from dept_employees
	WHERE dept_employees.dept_no='d007'
)
ORDER BY "last_name"
;

-- Verify query returned correct number of employees
select count(emp_no)
from dept_employees
WHERE dept_employees.dept_no='d007'
;

-- Determine department number for Development department
select * 
from departments
;

-- Sales - d007
-- Development - d005
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

-- Verify query returned correct number of employees
select count(emp_no)
from dept_employees
WHERE dept_employees.dept_no='d007' or dept_employees.dept_no='d005'
;

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select last_name, count(last_name)
from employees
Group by last_name
order by count DESC
;