
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
--

CREATE TABLE Departments (
    dept_no VARCHAR  NOT NULL ,
    dept_name VARCHAR  NOT NULL ,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
    )
);



CREATE TABLE Dept_emp (
    emp_no INTEGER  NOT NULL ,
    dept_no VARCHAR  NOT NULL 
);



CREATE TABLE Dept_manager (
    dept_no VARCHAR  NOT NULL ,
    emp_no INTEGER  NOT NULL 
);



CREATE TABLE Employees (
    emp_no INTEGER  NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL ,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_no
    )
);



CREATE TABLE Salaries (
    emp_no INTEGER  NOT NULL ,
    salary INTEGER  NOT NULL 
);



CREATE TABLE Titles (
    title_id VARCHAR  NOT NULL ,
    title VARCHAR  NOT NULL ,
    CONSTRAINT pk_Titles PRIMARY KEY (
        title_id
    )
);



ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);


ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);


ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);


ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);


ALTER TABLE Employees ADD CONSTRAINT fk_Employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);


ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

-- TO SEE TABLE OF EMPLOYEES INFORMATION: employees number, last name, first name, gender, and salary

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- Employees information that were hired in the year of 1986 
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN'1/1/1986' AND '12/31/1986';

-- Managers Only Department information: department number, department name, department manager number, last name, first name
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;

-- Employees Department Information: employees number, department name, 

SELECT dept_emp.emp_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no;

-- Search names that has firstname of Hercules and lastname of starting B
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- Employees that work in the Sales Department
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'

-- Employees that work in the Sales or Development Department
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Development' OR departments.dept_name = 'Sales'


-- Amount of Last Name's in the data
SELECT
    last_name, COUNT(*)
FROM
    employees
GROUP BY
    last_name
HAVING 
    COUNT(*) > 1
ORDER BY count DESC