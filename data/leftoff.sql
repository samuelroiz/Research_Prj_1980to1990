SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;

-- CREATE TABLE new_table_name AS
--     SELECT column1, column2,...
--     FROM existing_table_name
--     WHERE ....;

CREATE TABLE employee_info AS
SELECT emp_no, last_name, first_name, sex 
FROM employees;

SELECT * FROM employee_info;

-- Query to display the many-to-many relationships
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- SELECT *
-- FROM inventory
-- WHERE film_id = 268;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN'1/1/1986' AND '12/31/1986'

-- OR 

CREATE TABLE employee_1986 AS
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date LIKE '%1986'

SELECT * FROM employee_1986

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.title_id, employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.hire_date 
from dept_manager dm
join departments d
    on dm.dept_no = d.dept_no
join employees e
    on dm.emp_no = e.emp_no
join dept_emp de
    on dm.emp_no = de.emp_no

--
--
SELECT dept_emp.emp_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no;
--
--

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--
--

SELECT * 
FROM departments
WHERE dept_name = 'Sales'
;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'

SELECT employees.title_id, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'

--
--

