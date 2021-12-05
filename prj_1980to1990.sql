CREATE TABLE Departments (
    dept_no VARCHAR  NOT NULL ,
    dept_name VARCHAR  NOT NULL ,
    CONSTRAINT pk_Departments PRIMARY KEY (
        dept_no
    )
)



CREATE TABLE Dept_emp (
    emp_no INTEGER  NOT NULL ,
    dept_no VARCHAR  NOT NULL ,
    CONSTRAINT pk_Dept_emp PRIMARY KEY (
        emp_no
    )
)

CREATE TABLE Dept_manager (
    dept_no VARCHAR  NOT NULL ,
    emp_no INTEGER  NOT NULL 
)

CREATE TABLE Employees (
    emp_no INTEGER  NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL ,
    CONSTRAINT pk_Employees PRIMARY KEY (
        emp_title_id
    )
)



CREATE TABLE Salaries (
    emp_no INTEGER  NOT NULL ,
    salary INTEGER  NOT NULL 
)



CREATE TABLE Titles (
    title_id VARCHAR  NOT NULL ,
    title VARCHAR  NOT NULL 
)

-- IMPORTED DATA by right clicking on the table. click on import/export data. Change export to import. Click on what file you want to import. DONE
-- IMPORTED departments check
-- IMPORTED dept_emp check
-- IMPORTED dept_manager check
-- IMPORTED employees check
-- IMPORTED salaries check
-- IMPORTED titles check

-- CREATING A TABLE THAT ALREADY EXIST...JUST COPYING THE COLUMNS 
-- CREATE TABLE new_table_name AS
--     SELECT column1, column2,...
--     FROM existing_table_name
--     WHERE ....;

-- NUMBER 1

CREATE TABLE employee_info AS
SELECT emp_no, last_name, first_name, sex 
FROM employees;

-- OR USE 
-- Query to display the many-to-many relationships
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- NUMBER 2

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE employees.hire_date BETWEEN'1/1/1986' AND '12/31/1986'

-- OR 

CREATE TABLE employee_1986 AS
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date LIKE '%1986'

-- NUMBER 3

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
ON employees.emp_no = dept_manager.emp_no;

-- NUMBER 4